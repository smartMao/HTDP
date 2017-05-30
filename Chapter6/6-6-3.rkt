#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

; 定义结构
(define-struct circle (center radius color))

; 绘制函数
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c) )
)

; in-circle( circle posn )  读入 circle 结构体 和 posn 位置结构体, 判断posn的像素是否在圆内
(define (in-circle circle target-posn)
   (if
      (<=  (abs (- (posn-x (circle-center circle)) (posn-x target-posn))) (circle-radius circle) ) ; x 轴符合了
      (if
         (<=  (abs (- (posn-y (circle-center circle)) (posn-y target-posn))) (circle-radius circle) ) ; y 轴符合了
         "in circle"
         "not-in-circle"
      )
      "not-in-circle"
   )
)

(in-circle (make-circle (make-posn 10 10) 1 'red) (make-posn 11 11))

