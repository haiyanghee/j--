very good work, overall! Your code is well-written and-well documented, and you have paid great attention to details. However, the project has a lot of room for improvements in terms of modularity and readability.

- Your repo could use a better file structure as now everything is in the root directory, even the latex, and MD files. This makes it harder to understand your code structure.
As you have said it yourself right now, your AST design is tightly coupled with the grammar. You can make your design more abstract and write your functions in a more general case. For example, The AST node can have a variable specifying its type, another variable to hold its attributes (e.g., if it is a number token, the node's attribute can be the value of that number), and finally, an array of the node's children. This generic design should be enough to keep track of everything that is needed for your AST. 

- Writing many very specific functions reduces the code's readability and extendability. As this will tightly interconnect your modules, it makes it very hard to change even small parts of the code. 

- There are also some small consistency issues with your code. For example, in the bison action for handling an identifier, your code calls the "createTerminalTokenTypeWithStrCpy" function but, the scanner has already called this function. So your code can be replaced with $$ = $1. Or that you have defined a macro called mallocStructAndCheckForNULL but don't use it consistently in your code. 
