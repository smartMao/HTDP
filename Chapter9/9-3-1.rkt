#lang racket
(require lang/htdp-beginner)


; contains-doll
(define (contains-doll a-list-of-symbols)
    (cond
        [(empty? a-list-of-symbols) false]
        [else
           (cond
               [(symbol=? (first a-list-of-symbols) 'doll) true]
               [else (contains-doll (rest a-list-of-symbols))]
           )
        ]
    )
)


(define a-list (cons 'ball empty))
(define b-list (cons 'arrow (cons 'doll empty)))
(define c-list (cons 'bow (cons 'arrow (cons 'ball empty))))

(contains-doll a-list)
(contains-doll b-list)
(contains-doll c-list)
