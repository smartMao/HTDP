#lang racket
(require lang/htdp-beginner)

(define-struct node( ssn name left right))

; 创建节点树
(define node-99 (make-node 99 'node-99 empty empty))
(define node-24 (make-node 24 'node-24 empty empty))
(define node-10 (make-node 10 'node-10 empty empty))
(define node-77 (make-node 77 'node-77 empty empty))
(define node-95 (make-node 95 'node-95 empty node-99))
(define node-89 (make-node 89 'node-89 node-77 node-95))
(define node-15 (make-node 15 'node-15 node-10 node-24))
(define node-29 (make-node 29 'node-29 node-15 empty))
(define node-63 (make-node 63 'node-63 node-29 node-89))

(define (search-bst bst n)
    (cond
        [(empty? bst) false]
        [else
           (cond
               [(= n (node-ssn bst)) (node-name bst)]
               [(> n (node-ssn bst)) (search-bst (node-right bst) n)]
               [(< n (node-ssn bst)) (search-bst (node-left bst) n)]
           )
        ]
     )
)

(search-bst node-63 15)


