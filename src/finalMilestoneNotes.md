
## Some TODOs
- [ ] default initialize? or just allocate and thats it (prob just allocate ...)

```
.text
main:
    # gets a char from input, where the char is in $v0
    li $v0 12
    syscall 

    # copy the char in $v0 to $a0
    move $a0, $v0

    # print the character in $a0
    li $v0, 11
    syscall

    # $a0 is the integer to print
    li $v0, 1
    syscall

    # $a0 is the string to print
    li $v0,4
    la $a0, greeting
    syscall


    # TODO ned to think about printing a boolean
    # printb   void printb(boolean b)  Prints a boolean as “true” or “false”.

    # exit 
    li $v0,10
    syscall


.data
greeting: .asciiz "hello world"
```
