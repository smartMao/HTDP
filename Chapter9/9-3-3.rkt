#lang racket
(require lang/htdp-beginner)


; contains
(define (contains list symbol)
    (cond
        [(empty? list) false]
        [else
           (cond
               [(symbol=? (first list) symbol) true]
               [else (contains (rest list) symbol)]
           )
        ]
    )
)

(define a-list (cons 'ball empty))
(define b-list (cons 'arrow (cons 'doll empty)))
(define c-list (cons 'bow (cons 'arrow (cons 'ball empty))))

(contains a-list 'ball)
(contains b-list 'ball)
(contains c-list 'ball)
