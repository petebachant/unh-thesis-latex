# UNH thesis LaTeX template

This repository contains unofficial files for writing a UNH thesis using LaTeX.


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
look at page layout section in `unhthesis.cls`,


## Authors

There are comments throughout these files indicating
contributions from various people.
If you contributed and are not acknowledged please open
an issue or submit a pull request.

* I.C. Ruset
* B. Donmez
* Ivo Nedyalkov
* Faraz Medhi
