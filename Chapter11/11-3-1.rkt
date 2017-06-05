#lang racket
(require lang/htdp-beginner)

(define (random-n-m n m)
  (+ (random (- m n)) n )
)

(random-n-m 10 1000)
