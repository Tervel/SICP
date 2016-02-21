#lang scheme

; Square of a number
(define (square x) ( * x x))

; Sum of squares
(define (sumOfSquares x y)
    (+ (square x) (square y)))

; Define a procedure that takes three numbers as arguments and returns the sum 
; of the squares of the two larger numbers.

; Finds two largest numbers and sums the squares
(define (largestNumbers x y z)
    (cond ((and (< x y) (< x z)) (sumOfSquares y z))
          ((and (< y x) (< y z)) (sumOfSquares x z))
          ((and (< z y) (< z x)) (sumOfSquares x y))))

; Test
(= (largestNumbers 2 4 6 ) 52)
