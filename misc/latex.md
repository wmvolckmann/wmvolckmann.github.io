---
layout: page
title: LaTeX Basics
order: 10.1
---

For Windows, you'll probably want to use MiKTeX, which can be found [here](http://miktex.org/download).
For Mac, I am told MacTeX is the best, and it can be found [here](http://www.tug.org/mactex/).
Alternatively, you could use [Overleaf](https://www.overleaf.com/) right in your
browser. It's a bit slower than a local editor, but it comes with all of the
advantages of the cloud.

I've prepared a little LaTeX file with some of the basics in it. You can download
it [here](../basiclatex.tex) or look at the Overleaf version [here](https://www.overleaf.com/read/ycpfvsvqdxnb).
It's a mostly self-contained explanation of itself
-- you just have to typeset it (i.e. render it) first, which you can do in the menu
bar. (Or just click the green button top left, or just press control+t.) Make sure
the format is set to *pdfLaTeX* (or the longer *pdfLaTeX+* one).

![How to typeset with MiKTeX](../typeset.png)

The first time you render, it will probably ask you if you're okay with downloading
a few packages. Packages just give MiKTeX some added functionality. These are established
in the **preamble**. The preamble is where you title your document, name the author,
date, document type, the packages you want to use, any new commands you want to
use -- it basically defines the environment you're working in.

![The preamble](../preamble.png)

I've only covered some of the basic things, just enough to hopefully get someone
started. (Go back and forth between the rendered PDF and the code to really get
an idea of what's going on.) A lot of stuff you'll just pick up as you go, figuring
things out as needed.  You can find a lot more at [here](http://www.math.wisc.edu/~mitchell/learntex.pdf).
Google is also your friend.
