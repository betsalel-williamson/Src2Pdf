#!/usr/bin/tclsh

puts "Hello World"
# example comment

puts "A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text.  A very long line of text."

# the escaped quotes should not end the quote
set cmd "latexdiff-vc --pdf \"$prevRoot/$inline\" \"$curRoot/$inline2\""