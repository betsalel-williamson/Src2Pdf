# Src2Pdf
Output source code to PDF.  The example input file is in the `example` folder.  It takes as input a text file source code listings relative to the input file.  The script inlines the source code into a LaTeX file and outputs it to a pdf.

For a diff, the input file must contain a previous revision of code followed by the current revision of a source code file.  If the line is blank and is followed by a file then it is assumed that new file was created.  If the line contains a file and then is followed by a blank line it is assumed the file was removed.  Diff mode runs the `latexdiff` utility to make a nice PDF output highlighting new additions and crossing out code that was removed.  

Example of regular output is at: <https://github.com/betsalel-williamson/Src2Pdf/blob/master/example/regular-output.pdf>
Example of diff output is at: <https://github.com/betsalel-williamson/Src2Pdf/blob/master/example/diff-output.pdf>

## Dependencies

1. TCL >= 8.5.9
1. TeXLive or MacTeX
1. LatexDiff >= 1.3
1. dos2unix

### Mac Install Instructions

Use Homebrew to install the following items.

```
brew cask install mactex
brew install LatexDiff
brew install dos2unix
```

## Regular Mode

Create text file with list of files. Each line should have one file path.

Then run:

`tclsh src2pdf.tcl -i ./example/regular-sources-example -o ./example/regular-output.pdf`

Or:

First `chmod +x` the `src2pdf.tcl` script.  Then run `./src2pdf.tcl -i ./example/regular-sources-example -o ./example/regular-output.pdf`

## Diff Mode

Create text file with list of file pairs (old version followed by new version).  If a file is new, then the previous line should be blank.  If the file was deleted, the following line should be blank.

Then run:

`tclsh src2pdf.tcl -d -i ./example/diff-sources-example -o ./example/diff-output.pdf`

Or:

First `chmod +x` the `src2pdf.tcl` script.  Then run `./src2pdf.tcl -d -i ./example/diff-sources-example -o ./example/diff-output.pdf`

## Appendix

To find files you can run:

`find . -regex ".*[.](html|sql|tcl|js|c|h)"`
