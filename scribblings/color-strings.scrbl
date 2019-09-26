#lang scribble/manual
@require[@for-label[color-strings]
        scribble/extract]

@title{color-strings}
@author{thoughtstem}

@defmodule[color-strings]

This just provides, as identifiers, strings that correspond to colors in the @racket[racket/draw] color database. 

So you can do, for example:

@codeblock{
  #lang racket
 
  (require 2htdp/image color-strings)

  (circle 40 'solid red)
}

Save yourself a few keystrokes per color.  And get Racket to detect your mispelled color names!

@(include-extracted "../main.rkt")
