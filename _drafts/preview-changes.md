---
layout: post
title:  "Previewing changes"
date:   2016-06-23 00:25:46 -0500
categories: ['jekyll']
---

From Terminal, run jekyll serve or jekyll serve --drafts.

In Chrome, use URL http://http://127.0.0.1:3000/  and replace 3000 with the port that is specified in the \_config.yml file for jekyll or the default 4000 if no port is specified in this file. (Note that in the markup file that creates this page, there is a backslash before the underscore in this file name is not displayed. It avoids a problem with syntax highlighting when you view this file in Atom.)

After editing files in Atom and saving them, return to Chrome. Click to refresh the page or use key sequence Command-Shift-R to refresh. You do not need to add them or commit them to the git repository. This is important because it avoids many small commits that add clutter to the logs.
