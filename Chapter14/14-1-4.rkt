#lang racket
(require lang/htdp-beginner)

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

; sum-years() 家族中所有人的年龄加起来
(define (sum-years family-tree)
    (cond
        [(empty? family-tree) 0]
        [else 
           (+
              (child-date family-tree)
              (sum-years (child-father family-tree))
              (sum-years (child-mother family-tree))
           )
         ]
    )
)

; average-age() 统计家族中的平均年龄
(define (average-age family-tree)
   (/ (sum-years family-tree) (count-persons family-tree))
)

(define xuguiquan (make-child empty empty 'xuguiquan 1928 'black))
(define huangsongxi (make-child empty empty 'huangsongxi 1935 'black))
(define xujingxiang (make-child xuguiquan huangsongxi 'xujingxiang 1967 'black))
(define huangchunlian (make-child empty empty 'huangchuanlian 1971 'black))
(define xuzhiqiao (make-child xujingxiang huangchunlian 'xuzhiqiao 1997 'black))


(average-age xuzhiqiao)
