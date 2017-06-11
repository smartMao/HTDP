#lang racket
(require lang/htdp-beginner)

(define-struct node( ssn name left right))

; 创建节点树
(define node-99 (make-node 99 'node-99 empty empty))
(define node-24 (make-node 24 'node-24 empty empty))
(define node-87 (make-node 87 'node-87 empty empty))
(define node-33 (make-node 33 'node-33 empty empty))
(define node-95 (make-node 95 'node-95 empty node-99))
(define node-89 (make-node 89 'node-89 node-33 node-95))
(define node-15 (make-node 15 'node-15 node-87 node-24))
(define node-29 (make-node 29 'node-29 node-15 empty))
(define node-63 (make-node 63 'node-63 node-29 node-89))

; contains-bt() 判断节点数内有无 bt 
(define (contains-bt node bt)
     (cond
         [(empty? node) false]
         [else
            (or
               (= (node-ssn node) bt)
               (contains-bt (node-left node) bt)
               (contains-bt (node-right node) bt)
            )
         ]
     )
)

;
(define (search-bt node ssn)
     (cond
         [(empty? node) false]
         [else
            (cond
              [(= (node-ssn node) ssn) (node-name node)]
              [(contains-bt (node-left node) ssn) (search-bt (node-left node) ssn)]
              [else (search-bt (node-right node) ssn) ]
            )
         ]
     )

)

(search-bt node-63 33)
;(contains-bt node-63 24)
