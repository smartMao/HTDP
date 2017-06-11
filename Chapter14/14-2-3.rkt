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


(define (inorder node)
  (cond
    [(empty? node) empty]
    [else
       (append
                  (inorder (node-left node))
                  (list (node-ssn node))
                  (inorder (node-right node))
        )
    ]
  )
)

(inorder node-63)


