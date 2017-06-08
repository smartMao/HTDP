#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct child (father mother name date eyes))

; count-persons() 统计家族人数
(define (count-persons family-tree)
    (cond
        [(empty? family-tree) 0]
        [else
            (+
               1
               (count-persons (child-father family-tree))
               (count-persons  (child-mother family-tree))
            )  
        ]
    )
)


(define xuguiquan (make-child empty empty 'xuguiquan 1928 'black))
(define huangsongxi (make-child empty empty 'huangsongxi 1935 'black))
(define xujingxiang (make-child xuguiquan huangsongxi 'xujingxiang 1967 'black))
(define huangchunlian (make-child empty empty 'huangchuanlian 1971 'black))
(define xuzhiqiao (make-child xujingxiang huangchunlian 'xuzhiqiao 1997 'black))

(count-persons xuzhiqiao)
