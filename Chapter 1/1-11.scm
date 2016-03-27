#lang scheme

; Write a procedure that computes f by means of a recursive process.
(define (fRecusive n)
    (cond ((< n 3) n)
        (else (+ (fRecusive (- n 1))
                 (* 2 (fRecusive (- n 2)))
                 (* 3 (fRecusive (- n 3)))))))

; Write a procedure that computes f by means of an iterative process.
