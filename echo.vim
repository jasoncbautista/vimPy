" http://brainacle.com/how-to-write-vim-plugins-with-python.html
" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! Hallo(arg1 )

    " Get the first argument by name in VimL
    " let firstarg=a:arg1

    " Get the second argument by position in Viml
    " let secondarg=a:1

    " Get the arguments in python




" We start the python code like the next line.

python << EOF
# the vim module contains everything we need to interface with vim from
# python. We need urllib2 for the web service consumer.
import vim, urllib2
# we need json for parsing the response
import json
import flask

first_argument = vim.eval("a:arg1") #or vim.eval("a:0")

file_str = "wassa - "  + first_argument
vim.current.buffer.append(" file: %s"%file_str)
vim.current.buffer.prepend(" file: %s"%file_str)
print "yo"
print first_argument


EOF
" Here the python code is closed. We can continue writing VimL or python again.


endfunction
