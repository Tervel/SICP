#lang scheme

; (define (A x y)
;   (cond ((= y 0) 0)
;         ((= x 0) (* 2 y))
;         ((= y 1) 2)
;         (else (A (- x 1)
;                  (A x (- y 1))))))

; What are the values of the following expressions?
; (A 1 10)
; (A 0 (A 1 9))
; (A 0 (A 0 (A 1 8)))
; ...
; 1024

; (A 2 4)
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; ...
; 65536

; (A 3 3)
; (A 2 (A 3 2))
; (A 2 (A 2 (A 3 1)))
; ...
; 65536

; Consider the following procedures, where A is the procedure defined above:
; Give concise mathematical definitions for the functions

; (define (f n) (A 0 n))
; (A 0 2)
; (A 0 4)
; (f n) = n*2

; (define (g n) (A 1 n))
; (A 1 2)
; (A 0 (A 1 1))
; (g n) = 2^n

; (define (h n) (A 2 n))
; See: https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation
; (h n) = 2 ↑↑ n

; (define (k n) (* 5 n n))
; (k n) = 5n^2
