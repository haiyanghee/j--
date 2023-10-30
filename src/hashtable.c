#include "hashtable.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "commonHeader.h"
#include <assert.h>


struct StackOfHT *pushNewSymbolTabToStack(struct StackOfHT *stack)
{
	mallocStructAndCheckForNULL(struct StackOfHT, node,
				    pushNewSymbolTabToStack);
	node->next = stack;
	node->hashtable = createNewHashTable(DEFAULT_HASTTABLE_ALLOC_SIZE);
	return node;
}


void freeHashtable(struct HashTable *ht)
{
	// free the array first
	free(ht->arr);
	free(ht);
}
void freeStackNode(struct StackOfHT *stack)
{
	// free the hashtable first
	freeHashtable(stack->hashtable);
	free(stack);
}


void freeWholeStack(struct StackOfHT *stack)
{
	struct StackOfHT *nextStack;
	while (stack) {
		nextStack = stack->next;
		freeStackNode(stack);
		stack = nextStack;
	}
}

// allocate a new array for hashtable
void allocateNewHashTableArray(size_t capacity, struct HashTable *ht)
{
	// allocate new array, and set the pointers to NULL
	// we cannot use the mallocStructAndCheckForNULL macro here since we are
	// allocating a specific sized array
	struct HashNode **node = malloc(sizeof(struct HashNode) * capacity);
	if (!node) {
		fprintf(
		    stderr,
		    "In %s, mallocing node array with capacity = %zu failed! Will exit",
		    "allocateNewHashTableArray", capacity);
		exit(EXIT_FAILURE);
	}
	ht->arr = node;
	memset(ht->arr, 0, sizeof(struct HashNode) * capacity);
}

struct HashTable *createNewHashTable(size_t capacity)
{
	return createHashTable(0, capacity);
}

struct HashTable *createHashTable(size_t size, size_t capacity)
{
	mallocStructAndCheckForNULL(struct HashTable, ht, createHashTable);
	// change the capacity to the new one, but the size doesn't change
	ht->size = size;
	ht->capacity = capacity;
	allocateNewHashTableArray(capacity, ht);
	return ht;
}

void reallocHashTable(struct HashTable *ht)
{
	// we allocate an array of size 2*capacity
	size_t oldSize = ht->size;
	size_t newCap = ht->capacity * 2;
	struct HashNode **oldArr = ht->arr;
	ht->capacity = newCap;
	allocateNewHashTableArray(newCap, ht);

	// now we need to add the elements inside the old array to the new
	// one
	for (size_t i = 0; i < oldSize; ++i) {
		_addToHashTable(oldArr[i]->key, oldArr[i]->ptr, ht);
	}
	// should free the old aray
	free(oldArr);
}

size_t hashChar(char *str)
{
	size_t hash = FNV_OFFSET_BASIS;
	// keep iterating if its not null terminater
	while (*str != '\0') {
		hash = hash * FNV_PRIME;
		hash = hash ^ *str;
		++str;
	}
	return hash;
}

void _addToHashTable(char *str, uintptr_t ptr, struct HashTable *ht)
{
	mallocStructAndCheckForNULL(struct HashNode, node, _addToHashTable);
	node->key = str;
	node->ptr = ptr;

	// get the hash
	size_t hash = hashChar(str) % ht->capacity;
	// printf("hash = %zu\n", hash);
	//  do a linear insert
	size_t numOfIter = 0;
	// if we didn't iterate through everything
	while (numOfIter < ht->capacity) {
		// if we have space
		if (ht->arr[hash] == NULL) {
			ht->arr[hash] = node;
			return;
		}
		// increase the hash/index by 1
		hash = (hash + 1) % ht->capacity;
		++numOfIter;
	};
	// if we iterated through capacity number of times, it means the hash
	// table is full...
	assertm(false, "Inside _addToHashTable, it is full!");
}

// invariant: when starting to add an entry, the hashtable is not full
void addToHashTable(char *str, uintptr_t ptr, struct HashTable *ht)
{
	// check if capacity is full before add
	if (ht->size == ht->capacity) {
		reallocHashTable(ht);
	}
	_addToHashTable(str, ptr, ht);
	++ht->size;
}

bool queryHashTable(char *str, const struct HashTable *ht,
		    struct HashNode *node)
{
	// get the hash
	size_t hash = hashChar(str) % ht->capacity;
	size_t numOfIter = 0;
	char *key;
	// if the current array element is NULL, it means the key we are trying
	// to find doesn't exist. If we iterated through everything (numOfIter
	// == ht->capacity), then we didn't find it either
	while (ht->arr[hash] != NULL && numOfIter < ht->capacity) {
		key = ht->arr[hash]->key;
		// if we have matching keys, we are good
		if (strcmp(str, key) == 0) {
			// copy the info to node
			node->key = key;
			node->ptr = ht->arr[hash]->ptr;
			return true;
		}
		// increase the hash/index by 1
		hash = (hash + 1) % ht->capacity;
		++numOfIter;
	}
	return false;
}

bool queryStackHT(char *str, const struct StackOfHT *stack,
		  struct HashNode *node)
{
	// iterate the stack to find the most recent scope
	while (stack) {
		// if we found it in this hash table, then we are good
		if (queryHashTable(str, stack->hashtable, node)) {
			return true;
		}
		stack = stack->next;
	}
	return false;
}

void testHashmap()
{
	struct HashTable *ht = createHashTable(0, 3);
	addToHashTable("a", 0, ht);
	addToHashTable("ab", 0, ht);
	addToHashTable("c", 0, ht);
	printf("ht cap = %zu\n", ht->capacity);
	printf("ht size = %zu\n", ht->size);
	// this add should realloc
	addToHashTable("d", 0, ht);
	printf("should realloc ht cap = %zu\n", ht->capacity);
	printf("should realloc ht size = %zu\n", ht->size);

	struct HashNode dummyNode;
	// try to search

	// should succeed
	printf("search for \"a\" : %d\n", queryHashTable("a", ht, &dummyNode));
	// should succeed
	printf("search for \"ab\" : %d\n",
	       queryHashTable("ab", ht, &dummyNode));
	// should succeed
	printf("search for \"c\" : %d\n", queryHashTable("c", ht, &dummyNode));
	// should succeed
	printf("search for \"d\" : %d\n", queryHashTable("d", ht, &dummyNode));
	// search for an non-existing element
	printf("search for \"adf\" : %d\n",
	       queryHashTable("adf", ht, &dummyNode));
}
