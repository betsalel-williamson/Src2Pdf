# Src2Pdf
Output source code to PDF.  The example input file is in the `example` folder.  It takes as input a text file with the previous and next version of a source code file.  If in diff mode, it runs the `latexdiff` utility to make a nice PDF output of the diff.  Otherwise it just outputs the pdf using `latexmk`.

Example of regular output is at: <https://github.com/betsalel-williamson/Src2Pdf/blob/master/example/regular-output.pdf>
Example of diff output is at: <https://github.com/betsalel-williamson/Src2Pdf/blob/master/example/diff-output.pdf>

## Dependencies

1. TCL >= 8.6
1. TexLive
1. LatexDiff >= 1.3

## Regular Mode

`tclsh src2pdf.tcl -i ./example/regular-sources-example -o ./example/regular-output.pdf`

Or:

First `chmod +x` the `src2pdf.tcl` script.  Then run `src2pdf.tcl -i ./example/regular-sources-example -o ./example/regular-output.pdf`

## Diff Mode

`tclsh src2pdf.tcl -d -i ./example/diff-sources-example -o ./example/diff-output.pdf`

Or:

First `chmod +x` the `src2pdf.tcl` script.  Then run `src2pdf.tcl -i ./example/diff-sources-example -o ./example/diff-output.pdf`
