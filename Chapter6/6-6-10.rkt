#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct rectangle(ul width height color))

(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-ul r) (rectangle-width r) (rectangle-height r) (rectangle-color r))
)

;translate-rectangle() 
(define (translate-rectangle r delta)
   (draw-a-rectangle
    (make-rectangle (make-posn (+ (posn-x (rectangle-ul r)) delta) (posn-y (rectangle-ul r))) (rectangle-width r)
                               (rectangle-height r) (rectangle-color r) ))
)


(start 300 300)
(define r (make-rectangle (make-posn 10 10) 100 100 'red))
(define r-blue (make-rectangle (make-posn 10 10) 100 100 'blue))

(draw-a-rectangle r)
(sleep-for-a-while 2)
(translate-rectangle r-blue 150)
