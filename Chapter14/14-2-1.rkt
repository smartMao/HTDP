#lang racket
(require lang/htdp-beginner)

(define-struct node( ssn name left right))

; 创建节点树
(define node-99 (make-node 99 'a empty empty))
(define node-24 (make-node 24 'a empty empty))
(define node-87 (make-node 87 'a empty empty))
(define node-33 (make-node 33 'a empty empty))
(define node-95 (make-node 95 'a empty node-99))
(define node-89 (make-node 89 'a node-33 node-95))
(define node-15 (make-node 15 'a node-87 node-24))
(define node-29 (make-node 29 'a node-15 empty))
(define node-63 (make-node 63 'a node-29 node-89))

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

(contains-bt node-63 24)
