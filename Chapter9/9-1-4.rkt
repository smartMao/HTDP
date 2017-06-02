#lang racket
(require lang/htdp-beginner)

; 函数 contains-2-doll
(define (contains-2-doll list) 
  (or
     (symbol=? (first list) 'doll)
     (symbol=? (first (rest list)) 'doll)
  )
)

(contains-2-doll (cons 'dll (cons 'doll empty )))
