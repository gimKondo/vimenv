" Sometimes, io files written #!user/bin/end on head line
" are misidentify filetype.
" This file is prevent misidentification like that.
au BufReadPost,BufRead *.io  setf io
