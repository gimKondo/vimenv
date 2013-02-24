# what is this ?

this is a tool that makes syntax highlight file for vim from tags file created by ctags.

# how to use

1. at first, compile tag2syn.hs by haskell compiler(ex. ghc7.4)
2. make tags file by ctags on sources of standard library
3. create rule file for converting tags to syntax highlight file
    - this file is written pairs ctags's tag type and keyword type on vim's syntax highlight file
    - for example, if your tags has 2 type ('c' and 'f' that means class and function) and you want to
      make highlight these as xxClass and xxFunc, create rule file like here
      
        c xxClass
        f xxFunc

4. execute tag2syn with tags-file-path, rule-file-path and output-file-path like following example
    - user> tag2syn tags rule xx.vim

5. you can get a body of syntax highlight file

# history

- 2013.2.24 created by gim_kondo

