#lang racket
(require lang/htdp-beginner)

; 
(define-struct circle (center radius color))

; 例子
(make-circle (make-posn 1 1) 1 'red)
(make-circle (make-posn 10 10) 1 'red)
