# J--
This was a compiler project for CPSC 411 in Winter 2022. It is based on a small subset of Java. The rough compiler specification can be found [here](https://web.archive.org/web/20040813101727/http://pages.cpsc.ucalgary.ca/~aycock/411/spec.html) (I did not save the specification when I took the course, but it looks similar enough on wayback machine...)


Below are the notes for the TAs when I took the course.

## Milestone 1
The files related to milestone 1 are:
```
./src/lexer.l
./src/commonHeader.h
./src/commonHeader.c
./src/scannerMain.c
```

You can build the scanner by `make scanner`, and this should produce a binary file named `./scanner.out`. Then we can run it by giving it a file name `./scanner.out <filename>`.

The test files are located at `./testFiles/scannerTests/`.

You can find the milestone 1 readme as `./milestoneDocuments/1/Milestone1.md`.


## Milestone 2
The new files for the parser are
```
./src/ast.h
./src/ast.c
./src/parser.y
./src/parserMain.c
```

You can build the parser by `make parser`, and this should produce a binary file named `./parser.out`. Then we can run it by giving it a file name `./parser.out <filename>`.

The test files are located at `./testFiles/parserTests/`.

You can find the milestone 2 readme as `./milestoneDocuments/2/Milestone2.pdf`.

## Milestone 3
The new files are
```
./src/hashtable.h
./src/hashtable.c
./src/semantics.h
./src/semantics.c
```
You can build the semantics checking by `make semantic`, and this should produce a binary file named `./semantic.out`. Then we can run it by giving it a file name `./semantic.out <filename>`.

The test files are located at `./testFiles/semanticTests/`.

You can find the milestone 3 readme as `./milestoneDocuments/3/Milestone3.pdf`.

## Final milestone

The new files are
```
./src/codegen.h
./src/codegen.c
./src/codegenMain.c
```
You can build the code generation by `make codegen`, and this should produce a binary file named `./codegen.out`. Then we can run it by giving it a file name `./codegen.out <filename>`.
All of the test cases from Dr. Aycock's reference compiler folder is located at `./testFiles/finalReferenceTests`. 

I have included a `Makefile` in `./testFiles/finalReferenceTests`, so if you want to compile all of the test files with `./codegen.out`, you can do that by typing `make compile`. You can also run the outputs by typing `make runall`, but some of them requires user interaction, so this is not recommended.

However, the output of MIPS code for each file `<f>` is named `<f>.s`, and an example run output for that file with `~aycock/411/bin/spim -f <f>.s`  is named `<f>.out`. Only one example input is given for the programs that requires user interaction.

We will note that, after a long time of debugging MIPS, I have figured out that the conditional branching cannot jump too far (the approximated size is 2^16 bit integer for the number of lines to jump up/down). This caused the large files, such as `art-life.j--`, to run with exceptions, even when the output code is correct.
That occurred for the while loops, so I changed the behaviour of the labels, so that when the while expression is false, it just jumps unconditionally to a label. I did not do this for if-else statements, but it can be done with some effort (which I'm not gona put into)

