#lang racket
(require lang/htdp-beginner)

; dollar-store  检查列表中有无数值超过 price, 有则 true, 无则 false
(define (dollar-store list price)
    
   (cond
        [(empty? list) false]
        [else
           (cond
               [(> (first list) price) true]
               [else (dollar-store (rest list ) price)]
           )
        ]
    )
)

(define a-list (cons 0.75 (cons 1.95 (cons 0.25 empty))))

(dollar-store a-list 1)
