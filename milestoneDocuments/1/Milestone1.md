# Milestone 1
- name: Haiyang He
- UCID: 30067349
- email: haiyang.he@ucalgary.ca
- gitlab repo [URL](https://gitlab.cpsc.ucalgary.ca/haiyang.he/cpsc411)

## Briefly say what you're most proud of in this milestone's code and why.

I am proud that I handled the string errors a bit better than the reference compiler.
In particular, if there is any unexpected escape character (like `\a`) or there's a newline in the string like
```
"this is a str
ing"
```
The reference compiler will just say "missing terminating '"' "  and exits. However, if we do a multiline string in gcc with the following C file
```
int main()
{
	"test \a ab
	    cde ";
}
```
it will say that line 3 is missing a terminating '"' character on line 3 and 4, and parses"cde" as an identifier. It looks like what gcc did is it tries to find the terminating '"' at end of line 3, but there isn't any so it warns you, then goes back to the initial state. Then it sees "cde" as an identifier, then a starting string but without terminating '"' again at end of line 4.

My compiler will output it like
```
warning: Illegal character escape inside a string literal on line 1
error: Unexpected newline or carriage return in string literal (missing terminating '"') at or near line 2
---------------
Token type: Identifier
Line number: 2
Token: cde
error: Unexpected newline or carriage return in string literal (missing terminating '"') at or near line 3
```
which is very similar to the gcc behaviour. Also if there is an unsupported escape, such as
```
#include <stdio.h>
int main()
{
	char str[] = "test \ ab cde ";
	printf("%s\n", str);
}

```
gcc will warn you there is an unknown escape sequence `\006`, but it will save it in the string literal. Then when we print it, we can use `hexdump` to see the escaped character `006` is printed out. Feeding this example into my compiler, it also warns you about it, and also `\006` is printed out.

In my opinion, this is a better behaviour.

Also I provided yellow colors on "warnings" and red colors on "errors" to make the output nicer to read :)

## Briefly say what in this milestone's code needs the most improvement and why.

I think the project structure and the makefile can be improved. For example, the source files and header files could be separated into different directories, and then write a Makefile that connects them together. That way it will look more organized.

One potential improvement would be to make it multithreadable, but it is beyond the scope of this assignment since we only need 1 input file.

## Identify one specific area in the code you'd like feedback on from the TA (it can be the area you think needs improvement, or a different area).

I would love to get some feedback about the lexer file `lexer.l`, since this is my first time using flex and I hope I'm not doing a horrible job.

## What grade you think you've earned on the milestone and why

Honestly I don't like giving myself a grade, because it feels very uncomfortable. But I think the code do what it is supposed to do. So we will go over the properties:
### Tool (milestone) properties.

- Good error and warning messages output. Possible evidence: error and warning messages that identify the problem as accurately as possible, complete with location information (i.e., the line number).

    I think I have good error and warning messages. The warning and error identification includes the line number, but unfortounately does not contain the column number since flex does not support it.
    I also have yellow color as warnings and red color as errors, which makes it more readable.
    Also, as I explained above, I think I handled the string case better than the reference compiler.
    
- Predictable: correct inputs tokenized correctly, erroneous inputs rejected. Possible evidence: show your compiler's output for the supplied test inputs – ensure everything pertinent, like the list of tokens, is displayed in an easy-to-read manner.

    My compiler generates  correct tokens, and it rejects error inputs. I think it is also predictable. Please see `compilerOutputs.log` to see the outputs of the reference compiler and my compiler! It should give a good feel of the behaviour of the compiler.

### Development practices.

- Committing work regularly to your CPSC Gitlab repo. Possible evidence: commit history.
    
    I don't know the definition of committing "regularly", but I make a commit once I feel like I've finished a part of the assignment. For exampe, I committed "handled strings", when I handled the string cases.

### Code qualities. Possible evidence: code in repo, but you may want to highlight specific things you did or didn't do to achieve these goals.

- Code is readable: thoughtful use of whitespace and formatting, no gratuitously overcomplicated code.
    
    I think my code is readable with the formatting. I don't think I did anything complicated, so it should be easy to read.

- Code is modular.

    I think it is reasonably modular. I separated the scanner and the main, which was not done in tutorial. This way we don't populate the main file too much with the lexer.

- Code is consistent, e.g., with respect to variable and function naming conventions.
    
    I think my code is consistent. The global variables are captilized with underscores, but the non-global functions, variables and macro names are in camelcase.

- Code is consistent with respect to the implementation language, i.e., are appropriate idioms and libraries used?

    I think its consistent with the implementation language (which is C). I didn't do any weird things with it: all I did is while loops and simple macros.

- Code is well documented: important information is included, extraneous information is excluded.

    I think the code is documented well, because I have documentation for the important functions and explained the some of the expected behaviours that are different than the reference compiler.

- Speed: code should not be unreasonably slow.

    flex should not be too slow, so it should not be the bottleneck. For the main file, I just have a while loop with a switch statement, and I think it is not that slow either.
    So I think the code is not slow.

- Easy to build, and building without errors or warnings. Possible evidence: show the compilation on the CPSC Linux machines. Note that if your TA needs to build and run your code themselves, they'll be doing it on the CPSC Linux machines, so if your code doesn't build on there then that'll be a problem.

    I tested it on the linux machines: just type `make` and then there should be a binary output called `scanner.out`. Then you can run it by giving it a filename.
    Here is the output:
```
haiyang.he@csx:~/cpsc411/scanner$ make
flex lexer.l
gcc -Wall main.c scanner.c -lfl -o scanner.out
scanner.c:1532:16: warning: ‘input’ defined but not used [-Wunused-function]
 1532 | #else
      |                ^
scanner.c:1485:17: warning: ‘yyunput’ defined but not used [-Wunused-function]
 1485 |
      |                 ^
```
There are two warnings (unused variables), but they come from the `scanner.c`, which is the lex generated file. I could supress the Wunused warnings, but since the warnings are technically not my program's problem, I just included -Wall and left the two warnings in there.

### Relationship with the environment.

- Consistent with the environment: error and warning messages sent to stderr, regular output sent to stdout, exit status code set appropriately.

    I use fprint to print to stderr when theres a warning or an error. Otherwise I use printf to print to stdout. The exit status is the same as the reference compiler's.


- Easy to run. Since the compiler's audience is you and the TA, it should be easy to run in the sense that it works to spec the same as the many others they have to look at, i.e., a single command-line argument.

    Yes, if you don't input exactly 1 file, it will error and tell you to input one.

- Meta-documentation: is the way to build and run your milestone code clearly documented in the repo's README.md? Possible evidence: README.md.

    This is the README! :)

So what grade do I think I earned? Since the compiler does what it is supposed to do, looking at the rubric I think I deserve somewhere between 7/8 and 8/8. Again I really hate giving myself a grade (its too unnatural to me), so please judge it yourself and give me a grade!
