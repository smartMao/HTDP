#lang racket
(require lang/htdp-beginner)


(define (cross symbols numbers)
    (cond
        [(empty? symbols) empty]
        [else (append (list (join (first symbols) numbers) ) (cross (rest symbols) numbers))]
    )
)

(define (join symbol numbers)
     (cond
         [(empty? numbers) empty]
         [else (append (list symbol (first numbers)) (join symbol (rest numbers))) ]
     )
)

;(join 'a (list 1 2 3))
(cross (list 'a 'b' c) (list 1 2 3))
