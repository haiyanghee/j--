#pragma once
#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>

// clang-format off

// we will use the FNV-1 hash algorithm: https://en.wikipedia.org/wiki/Fowler%E2%80%93Noll%E2%80%93Vo_hash_function

#define DEFAULT_HASTTABLE_ALLOC_SIZE 369
#define FNV_OFFSET_BASIS 0xcbf29ce484222325
#define FNV_PRIME 0x100000001b3

struct HashNode{
    char* key;
    //we store a pointer pointing to some object
    uintptr_t ptr;
};

struct HashTable{
    size_t size, capacity;
    //array of hash nodes
    //invariant: empty nodes are NULL
    struct HashNode** arr;
};

//stack of hash tables, which is just a linked list
struct StackOfHT{
    struct HashTable * hashtable;
    struct StackOfHT* next;
};


//this takes in a stack pointer, and return a new stack pointer (which is the new head with default allocated hash table)
struct StackOfHT* pushNewSymbolTabToStack(struct StackOfHT* stack);
void freeHashtable(struct HashTable* ht);
void freeStackNode(struct StackOfHT* stack);
//frees everything inside the stack
void freeWholeStack(struct StackOfHT* stack);

void allocateNewHashTableArray(size_t capacity, struct HashTable *ht);
struct HashTable* createNewHashTable(size_t capacity);
struct HashTable* createHashTable(size_t size, size_t capacity);

void reallocHashTable(struct HashTable* ht);
//hash a char
size_t hashChar(char* str);

//this will add an entry to the hash table and THATS IT (will not increment size)
//assumes hashtable is not full
void _addToHashTable(char* str, uintptr_t ptr, struct HashTable* ht);

//this will add an entry to the hash table, and increment the size
void addToHashTable(char* str, uintptr_t ptr, struct HashTable* ht);
//if query is successful, copy the data to the node
bool queryHashTable(char* str, const struct HashTable* ht, struct HashNode* node);

bool queryStackHT(char* str, const struct StackOfHT * stack, struct HashNode* node);

// just a brief test case on the hashmap, looks like it works
void testHashmap();
