CC=gcc
CCFLAGS=-Wall -g

scanner: lexer 
	$(CC) $(CCFLAGS) scannerMain.c scanner.o commonHeader.o parser.tab.o ast.o -lfl -o scanner.out

parser: scanParse
	$(CC) $(CCFLAGS) parserMain.c scanner.o commonHeader.o parser.tab.o ast.o -lfl -o parser.out

semantic: hashtable scanParse
	$(CC) $(CCFLAGS) -c semantics.c
	$(CC) $(CCFLAGS) semanticMain.c scanner.o commonHeader.o parser.tab.o ast.o hashtable.o semantics.o -lfl -o semantic.out

codegen: semantic
	$(CC) $(CCFLAGS) -c codegen.c
	$(CC) $(CCFLAGS) codegenMain.c scanner.o commonHeader.o parser.tab.o ast.o hashtable.o semantics.o codegen.o -lfl -o codegen.out


hashtable: lexer
	@$(CC) $(CCFLAGS) -c hashtable.c

# we just compile the parser and scanner together since they require each other's generated header files ...
scanParse: lexer 
	@$(CC) $(CCFLAGS) -c ast.c
	@$(CC) $(CCFLAGS) -c parser.tab.c 
	@$(CC) $(CCFLAGS) -c scanner.c
	@$(CC) $(CCFLAGS) -c commonHeader.c

lexer:
	flex lexer.l
	bison -v -Wall -d parser.y

clean:
	rm *.out *.o
