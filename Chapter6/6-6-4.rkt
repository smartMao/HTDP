#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

; 定义结构
(define-struct circle (center radius color))

; 绘制函数
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c) )
)

; translate-circle()
(define (translate-circle circle delta)
  ; 在原来的 x 轴上 , 加上 delta 偏移值值
  (draw-circle (make-posn (+ (posn-x (circle-center circle)) delta)  (posn-y (circle-center circle))) (circle-radius circle) (circle-color circle) )
)

; 绘制圆形  (make-circle x x x ) 是对结构 circle( center radius color ) 的实现
(start 500 300)
(draw-a-circle (make-circle (make-posn 100 100) 100 'red) )
(sleep-for-a-while 2) ; suspend 2 second
(translate-circle  (make-circle (make-posn 100 100) 100 'red) 100)

