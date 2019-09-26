#lang at-exp racket

(require (for-syntax racket)
         scribble/srcdoc
         (for-doc scribble/manual)
         syntax/parse/define
         (for-syntax (only-in racket/draw the-color-database)))

(define-syntax (provide-string stx)
  (define id (second (syntax->datum stx)))
  (datum->syntax stx
                 `(begin
                    (provide (thing-doc ,id string? 
                                        @{
                                        @para{Just the string @racket[,(~a id)]}
                                        }
                                        ))
                    (define ,id ,(~a id)))))

(define-syntax-rule (provide-strings s ...)
  (begin (provide-string s) ...))

;TODO: https://docs.racket-lang.org/draw/color-database___.html
;      Autoprovide everything from the standard database.

(define-syntax (provide-strings-from-the-color-database stx)
  (syntax-parse stx
    [(_ )
     (define (no-space? s)
       (not (string-contains? s " ")))
     (define colors 
       (map string->symbol 
            (filter no-space? (send the-color-database get-names))))
     #`(begin 
         (provide-strings #,@colors))]))

(provide-strings-from-the-color-database)
