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

; clear-a-circle()
(define (clear-a-circle c)
  (clear-circle (circle-center c) (circle-radius c) (circle-color c) )
)

; draw-and-clear-circle()
(define (draw-and-clear-circle c)
  (and
   (draw-a-circle c) ; 画圆
   (sleep-for-a-while 2) ; 暂停两秒
   (clear-a-circle c) ; 清除
   (translate-circle c 10) ; x 轴偏移10 再画圆
  )
)

; 绘制圆形  (make-circle x x x ) 是对结构 circle( center radius color ) 的实现
(start 500 300)
(draw-and-clear-circle (make-circle (make-posn 100 100) 100 'red))
(draw-and-clear-circle (make-circle (make-posn 110 100) 100 'red))
(draw-and-clear-circle (make-circle (make-posn 120 100) 100 'red))
(draw-and-clear-circle (make-circle (make-posn 130 100) 100 'red))
(draw-and-clear-circle (make-circle (make-posn 140 100) 100 'red))
(draw-and-clear-circle (make-circle (make-posn 150 100) 100 'red))

