#lang scheme

; Implement a cube-root procedure analogous to the square-root procedure 
; (x / y^2 + 2 * y) / 3
; (/ (+ (/ x (square y)) (* 2 y)) 3)

; Square of a number
(define (square x) ( * x x))

; Average a number
(define (average x y)
    (/ (+ x y) 2))

; Define tolerance for our cube-root approximation
(define (good-enough? guess x)
    (< (abs (- guess x)) 0.001))

; Improve our cube-root approximation
(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

; Recursive cube root iteration
(define (cube-root-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (cube-root-iter (improve guess x)
            x)))

(define (cube-root x)
    (cube-root-iter 1.0 x))

(cube-root 64)
