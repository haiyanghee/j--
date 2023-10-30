#include <stdio.h>

int main()
{
	int a, b, c;

	a = 7;
	b = 3;

	// printi(a);
	// printi(b);

	c = ((a + b) + ((1 + 2 + 3) * (3 + 2 + (b + a))))
	    + ((1 - b) - ((b + b + 3) / (3 + 2 + (b % a))))
		  * ((1 - b) - ((b % a * 3) / (3 + 2 % (b * a))))
	    - (((a % a - 3) / (a + 2 % (a + 1))));
	printf("c = %d\n", c);
}
