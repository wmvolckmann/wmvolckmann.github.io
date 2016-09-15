---
layout: post
title:  "Using drafts"
date:   2016-06-23 00:25:46 -0500
categories: ['jekyll']
---

From Terminal, run:

- "jekyll build --drafts" to build a site that includes the posts in the drafts folder

- "jekyll serve --drafts" to serve the site and show items in the drafts folder

In Chrome, use URL http://http://127.0.0.1:3000/  

- Replace 3000 with the port that is specified in the configuration file for jekyll ( \_config.yml ) or the default port 4000 if no port is specified there.

After editing files in Atom and saving them with Command-s, return to Chrome. Use a mouse click or the key sequence Command-Shift-R to refresh the page.

You should be able to see what your edited files will look like on the website. Posts in the drafts folder will be under a directory defined by the category specified for the draft posts.
