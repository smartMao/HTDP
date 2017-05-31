#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct rectangle(ul width height color))

(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-ul r) (rectangle-width r) (rectangle-height r) (rectangle-color r))
)

(start 300 300)
(draw-a-rectangle (make-rectangle (make-posn 10 10) 100 100 'red))
