#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>


//
//  Initialization.
//

int MEOF;

int TK_EOF;
int TK_EOLN;
int TK_NUMBER;
int TK_ADD;
int TK_SUB;
int TK_MUL;
int TK_DIV;
int TK_LPAREN;
int TK_RPAREN;

int ASCII_0;
int ASCII_9;
int ASCII_PLUS;
int ASCII_MINUS;
int ASCII_STAR;
int ASCII_SLASH;
int ASCII_LPAREN;
int ASCII_RPAREN;
int ASCII_SPACE;
int ASCII_TAB;
int ASCII_CR;
int ASCII_NL;
//
//  A recursive-descent calculator.  Not particularly robust!
//

//
//  Scanner.
//

bool _havetoken;
int _token;
int attr;

//
//  Input wrappers, so we can push back a character.
//

bool _havechar;
int _char;

void printi(int i) { printf("%d", i); }
int mygetc()
{
	if (_havechar) {
		_havechar = false;
		return _char;
	}
	return getchar();
}
bool myisspace(int ch)
{
	return ch == ASCII_SPACE || ch == ASCII_TAB || ch == ASCII_CR;
}

bool myisdigit(int ch)
{
	// printf("--------in isdigit\n");
	// printb(ch >= ASCII_0 && ch <= ASCII_9);
	// printf("--------out isdigit\n");
	return ch >= ASCII_0 && ch <= ASCII_9;
}

void myungetc(int ch)
{
	if (_havechar) {
		printf("Internal error: too many ungets!\n");
		exit(0);
	}
	_havechar = true;
	_char = ch;
}

int scanner()
{
	int ch;

	while (myisspace(ch = mygetc()))
		;

	if (ch == MEOF) return TK_EOF;
	if (ch == ASCII_NL) return TK_EOLN;
	if (ch == ASCII_PLUS) return TK_ADD;
	if (ch == ASCII_MINUS) return TK_SUB;
	if (ch == ASCII_STAR) return TK_MUL;
	if (ch == ASCII_SLASH) return TK_DIV;
	if (ch == ASCII_LPAREN) return TK_LPAREN;
	if (ch == ASCII_RPAREN) return TK_RPAREN;

	if (myisdigit(ch)) {
		attr = 0;
		while (myisdigit(ch)) {
			attr = attr * 10 + (ch - ASCII_0);
			ch = mygetc();
		}
		myungetc(ch);
		return TK_NUMBER;
	}

	printf("Error: invalid character.\n");
	exit(0);
}


int peek()
{
	if (_havetoken) return _token;

	_havetoken = true;
	_token = scanner();
	printf("token = \n");
	printi(_token);
	printf("\n");
	return _token;
	// return _token = scanner();
}

void match(int expect)
{
	if (peek() != expect) {
		printf("Error: expected ");
		printf("%c", expect); // XXX - not always printable
		printf("\n");
		exit(0);
	}
	_havetoken = false;
}


//
//  Parser.
//
int T();

int E()
{
	int l;
	int r;
	int token;

	l = T();
	while (peek() == TK_ADD || peek() == TK_SUB) {
		match(token = peek());
		r = T();

		if (token == TK_ADD)
			l = l + r;
		else
			l = l - r;
	}
	return l;
}
void parser()
{
	int result;

	while (peek() != TK_EOF) {
		result = E();
		match(TK_EOLN);

		printf(" = ");
		printi(result);
		printf("\n");
	}
}


int F()
{
	int result;

	int token;
	token = peek();

	if (token == TK_LPAREN) {
		match(TK_LPAREN);
		result = E();
		match(TK_RPAREN);

	} else if (token == TK_SUB) {
		match(TK_SUB);
		result = -F();

	} else if (token == TK_NUMBER) {
		match(TK_NUMBER);
		result = attr;

	} else {
		printf("Error: expected factor.\n");
		exit(0);
	}
	return result;
}
int T()
{
	int l;
	int r;
	int token;

	l = F();
	while (peek() == TK_MUL || peek() == TK_DIV) {
		match(token = peek());
		r = F();

		if (token == TK_MUL)
			l = l * r;
		else
			l = l / r;
	}
	return l;
}


void init()
{
	MEOF = -1;

	ASCII_0 = 48;
	ASCII_9 = 57;
	ASCII_PLUS = 43;
	ASCII_MINUS = 45;
	ASCII_STAR = 42;
	ASCII_SLASH = 47;
	ASCII_LPAREN = 40;
	ASCII_RPAREN = 41;
	ASCII_SPACE = 32;
	ASCII_TAB = 9;
	ASCII_CR = 13;
	ASCII_NL = 10;

	TK_EOF = 256;
	TK_NUMBER = 257;
	TK_ADD = ASCII_PLUS;
	TK_SUB = ASCII_MINUS;
	TK_MUL = ASCII_STAR;
	TK_DIV = ASCII_SLASH;
	TK_LPAREN = ASCII_LPAREN;
	TK_RPAREN = ASCII_RPAREN;
	TK_EOLN = ASCII_NL;
}

int main()
{
	init();
	parser();
}
