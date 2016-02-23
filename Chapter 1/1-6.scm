#lang scheme

; Pre-requisite procedures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Square of a number
(define (square x) ( * x x))

; Average a number
(define (average x y)
    (/ (+ x y) 2))

; Define tolerance for our square-root approximation
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

; Improve our square-root approximation
(define (improve guess x)
    (average guess (/ x guess)))

; Recursive square root iteration
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; if defined in terms of cond rather than as a special form.
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

; Recursive square-root iteration using new-if.
; Using this function to compute square roots results in an infinite
; recursion loop. This is because the new-if procedure evalutes using
; normal-order evaluation which results in the procedure looping until it
; is able to find an expression only containing primitive operators, which in
; this case will not happen. The default if statement uses applicative-order
; evaluation which does not have this issue
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(sqrt 9)
