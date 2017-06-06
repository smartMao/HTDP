#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define (draw-poly-v1 poly-list)
    (draw-connect-cots (cons (last poly-list) poly-list))
)

(define (draw-poly-v2 poly-list)
    (draw-connect-cots (add-at-end (first poly-list) poly-list))
)

(define (draw-connect-cots a-poly)
    (cond
        [(empty? (rest a-poly)) true]
        [else
           (and
              (draw-solid-line (first a-poly) (second a-poly))
              (draw-connect-cots (rest a-poly))
           )
        ]
    )
)

; last() 查询出表内非空的最后一个元素
(define (last-custom poly)
    (cond
        [(empty? (rest poly)) (first poly)]
        [else (last-custom (rest poly))]
    )
)

; add-at-end() 将表中第一个元素添加最后
(define (add-at-end a-posn a-poly)
  (cond
    [(empty? (rest a-poly)) (cons (first a-poly) (cons a-posn empty))]
    [else (cons (first a-poly) (add-at-end a-posn (rest a-poly)))]
 )
)


; 数据定义 与 调用
(define poly-list-v1 (cons (make-posn 10 10)
                        (cons (make-posn 50 150)
                              (cons (make-posn 90 70 ) empty))))

(define poly-list-v2 (cons (make-posn 210 210)
                        (cons (make-posn 270 110)
                              (cons (make-posn 10 290 ) empty))))


(start 300 300)
(draw-poly-v1 poly-list-v1)
(draw-poly-v2 poly-list-v2)

