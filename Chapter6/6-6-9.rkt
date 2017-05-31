#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct rectangle(ul width height color))

(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-ul r) (rectangle-width r) (rectangle-height r) (rectangle-color r))
)

; in-rectangle() 判断 posn 结构体是否在长方形内部
(define (in-rectangle r posn)
  (and 
     (and 
        (>= (- (posn-x posn) (posn-x (rectangle-ul r))) 0)
        (<= (- (posn-x posn) (posn-x (rectangle-ul r))) (rectangle-width r))
      )
    (and 
        (>= (- (posn-y posn) (posn-y (rectangle-ul r))) 0)
        (<= (- (posn-y posn) (posn-y (rectangle-ul r))) (rectangle-width r))
    )
  )
)

(start 300 300)
(draw-a-rectangle (make-rectangle (make-posn 10 10) 100 100 'red))
(in-rectangle (make-rectangle (make-posn 10 10) 100 100 'red) (make-posn 9 9))
