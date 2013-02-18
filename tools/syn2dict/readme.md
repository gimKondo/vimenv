# what is this ?

this makes dictionary file for vim from syntax highlight file.

# how to use

I recommend you to compile this haskell script, and set executable file
to dictionary on path.
Next, execute that module with parameters.
1st parameter means input file that is syntax-highlight file.
2nd parameter means output file that is dictionary file.

But you can use this source on REPL like ghci.
On ghci, at first, you should load this script.
Next, use :main command with parameter.

# probrems

this script identifies just only simple keyword.
It means, if you use option or regexp in sentence of syntax keyword,
maybe this script cannot come along.

# plan

I have it in mind to add features following.

- add the option that forms dictionary file
- create syntax highlight from dictionary file. Yes, I mean inverse transformation

# history

create : 2013.2.19 by gim_kondo
