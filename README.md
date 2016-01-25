# UNH thesis LaTeX template

This repository contains unofficial files for writing a UNH thesis using LaTeX.
The `unhthesis` class was originally based on the
[`umassthesis`](https://github.com/umasscs/umassthesis) class.


## Usage

To compile the document, run

    latexmk -pdf thesis.tex


## Notes

All dissertations must include an acknowledgement of funding sources used to
support the research that is reported, including both University awards (e.g., a
Graduate School Dissertation Fellowship) and external grants and contracts.


### Margins

For a UNH Thesis, the margins are 1.5" on the left, 1" at the bottom and right.
The first page of a chapter or major section has a top margin of 1.5". On all
other pages, the top margin is 1".

The parameters for the `unhthesis` document style are set to meet the above
requirements. However, exact placement of the text on the page can vary from
printer to printer, or even from week to week on the same printer. To compensate
for this, two parameters can be used to shift the entire text 'box' left to
right and top to bottom:

```
                                    |<-->| \hoffset
                                    |    |
                                    |    |
              +--------------------------+ --------
              |                          |       ^
              |                          |       |  \voffset
              |                          |       v
              |    +----------------+    | --------
              |    |              xx|    |
              |    |                |    |
              |    |  xx xxxxxxx xxx|    |
              |    |xxxx xx x xxx xx|    |
              |    |xxx xxx x xxxx x|    |
              |    |x xxx xxx x xxxx|    |
              |    |xxx xxx xxxx xxx|    |
              |    |x xx xxxx.      |    |
              |    +----------------+    |
              |                          |
              |                          |
              +--------------------------+
```

Negative values for `\hoffset` shift the text left on the page. Negative values
for `\voffset` shift the text up on the page. To change the size of the text box
look at page layout section in `unhthesis.cls`.


### Including code

Note that rather than including as appendices, it may be more useful to readers
if long blocks of code, e.g., full programs, are placed online in a version
control repository, e.g., on [GitHub](https://github.com), then archived with a
service that mints DOIs, such as [figshare](https://figshare.com) or
[Zenodo](https://zenodo.org). This way, the version of the code used can be
cited in the text.


#### MATLAB

1. Obtain `mcode.sty` and place in this directory.
2. Add `\usepackage[autolinebreaks]{mcode}` to `preamble.tex`
3. Use the command `\lstinputlisting{code/hello_world.m}` where  
   `code/hello_world.m`, is the path to the code to include.


## Authors

There are comments throughout these files indicating
contributions from various people.
If you contributed and are not acknowledged please open
an issue or submit a pull request.

* I.C. Ruset
* B. Donmez
* Ivo Nedyalkov
* Faraz Medhi
