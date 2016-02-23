#lang scheme

; Square of a number
(define (square x) ( * x x))

; Average a number
(define (average x y)
    (/ (+ x y) 2))

; Define tolerance for our square-root approximation, continues until difference
; is less than 1 percent
(define (good-enough-delta? guess guessImproved)
    (< (/ (- guess guessImproved) guess) 0.01))

; Improve our square-root approximation
(define (improve guess x)
    (average guess (/ x guess)))

; Recursive square root iteration
(define (sqrt-iter guess x)
    (if (good-enough-delta? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; Greater accuracy for smaller and larger numbers, though only up to a certain
; point due to fractions being used.
;(sqrt .000005)
(sqrt 0.000005)
