#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

; 定义长方形的结构
(define-struct rectangle (left-start width height color))

(make-rectangle (make-posn 10 10) 100 100 'red)
