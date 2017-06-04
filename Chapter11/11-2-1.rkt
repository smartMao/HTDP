#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define (repeat n symbol)

  (cond
      [(zero? n) empty]
      [else (cons symbol (repeat (sub1 n) symbol))]
  )
)

(repeat 10 'wonderful)
