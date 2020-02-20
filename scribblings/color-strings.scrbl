#lang scribble/manual
@require[@for-label[colors-as-strings]
        scribble/extract]

@title{colors-as-strings}
@author{thoughtstem}

@defmodule[colors-as-strings]

This just provides, as identifiers, strings that correspond to colors in the @racket[racket/draw] color database. 

So you can do, for example:

@codeblock{
  #lang racket
 
  (require 2htdp/image colors-as-strings)

  (circle 40 'solid red)
}

Save yourself a few keystrokes per color.  And get Racket to detect your mispelled color names!

@(include-extracted "../main.rkt")
