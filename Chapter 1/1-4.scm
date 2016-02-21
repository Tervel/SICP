#lang scheme

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; If b > 0, +, else -
(= (a-plus-abs-b 4 -4) 8)
