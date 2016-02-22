#lang scheme

(define (p) (p))

(define (text x y)
    (if ( = x 0)
        0
        y))

; Evaluate the expression
(test 0 (p))

; If applicative-order evaluation is used (p) will be evaluated and end in a
; recursive loop as (p) refers to itself. If normal-order evaluation is used (p)
; will return 0 as it isn't needed by any primitive operations
