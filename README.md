color-strings
=============


The world's simplest Racket package.  

It just provides out identifiers for color words.  They just map to strings.  E.g.

```
#lang racket

(require 2htdp/image color-strings)

(circle 40 'solid red)
``` 

The identifier `red` holds the string `"red"`.  Helps prevent typos. 
