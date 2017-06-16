#lang racket
(require lang/htdp-beginner)


; merge 合并列表
(define (merge list1 list2)
    (cond
        [(empty? list1) list2]
        [(empty? list2) list1]
        [else
           (cond
               [(<= (first list1) (first list2)) (cons (first list1) (merge (rest list1) list2))]
               [else (cons (first list2) (merge list1 (rest list2)))]
            )
        ]
    )
)

; list-unique 列表去重复
(define (list-unique list)
    (cond
        [(empty? (rest list)) (cons (first list) empty)]
        [
         (=
              (first list)
              (first  (rest list))
           )
           (cons (first list) (list-unique (rest (rest list))))
        ]
        [else (cons (first list) (list-unique (rest list)))]      
    )
)


(define list-merge (merge (list  1 3 6 8 9) (list 1 2 2 8 11)))
(display list-merge)(newline)
(list-unique list-merge)
