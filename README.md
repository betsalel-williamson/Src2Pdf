# Code Diff to PDF
Output a Code Diff to PDF.  The example input file is in the `example` folder.  It takes as input a text file with the previous and next version of a source code file.  Next, it runs the `latexdiff` utility to make a nice PDF output of the diff.

Example output is at: <https://github.com/betsalel-williamson/code-diff-to-pdf/blob/master/example/output.pdf>

## Dependencies

1. TCL >= 8.6
1. TexLive
1. LatexDiff >= 1.3

## Run

`tclsh diff-src.tcl -i ./example/sample-sources -o ./example/output.pdf`

Or:

First `chmod +x` the `diff-src.tcl` script.  Then run `diff-src.tcl -i ./example/sample-sources -o ./example/output.pdf`
