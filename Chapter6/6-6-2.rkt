#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

; 定义结构
(define-struct circle (center radius color))

; 绘制函数
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c) )
)

; 绘制圆形  (make-circle x x x ) 是对结构 circle( center radius color ) 的实现
(start 300 300)
(draw-a-circle (make-circle (make-posn 100 100) 100 'red) )
(draw-a-circle (make-circle (make-posn 100 100) 10 'gray) )
