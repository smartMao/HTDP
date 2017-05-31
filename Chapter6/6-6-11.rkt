#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct rectangle(ul width height color))

(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-ul r) (rectangle-width r) (rectangle-height r) (rectangle-color r))
)


; clear-a-rectangle()
(define (clear-a-rectangle r)
  (clear-solid-rect (rectangle-ul r) (rectangle-width r) (rectangle-height r) (rectangle-color r))
)


(start 300 300)
(define r (make-rectangle (make-posn 10 10) 100 100 'red))

(draw-a-rectangle r)
(sleep-for-a-while 2)
(clear-a-rectangle r)

