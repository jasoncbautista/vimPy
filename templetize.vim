" http://brainacle.com/how-to-write-vim-plugins-with-python.html
" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! Templetize(arg1)

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
# from readFile import create_from_template


first_argument = vim.eval("a:arg1") #or vim.eval("a:0")


def create_from_template(name):
    template_name = "view.js"
    data = ""
    with open(template_name, "r") as my_template_file:
        data=my_template_file.read().replace("{{myFile}}", name)

    return data.split("\n")

     
vim.current.buffer[:] = create_from_template(first_argument)

EOF
" Here the python code is closed. We can continue writing VimL or python again.


endfunction
