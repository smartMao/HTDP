#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

(define-struct size-data(width height))

(define-struct circle (posn radius color))
(define-struct rectangle (posn size-data color))

; draw-losh() 画出一个小脸
(define (draw-losh list-of-shapes)
  (cond
      [(empty? list-of-shapes) false]
      [else
         (and
            (draw-shape (first list-of-shapes))
            (draw-losh (rest list-of-shapes))
         )
      ]
  )
)

; draw-shape
(define (draw-shape shape)
    (cond
      [(circle? shape) (draw-circle (circle-posn shape)  (circle-radius shape) (circle-color shape) ) ]
      [(rectangle? shape) (draw-solid-rect  (rectangle-posn shape)  (size-data-width (rectangle-size-data shape)) (size-data-height (rectangle-size-data shape))  (rectangle-color shape) )]
    )
)


(start 300 100)
(draw-shape (make-rectangle (make-posn 30 20) (make-size-data 5 5) 'blue))

(define FACE (cons (make-circle (make-posn 50 50) 40 'red)
                   (cons (make-rectangle (make-posn 30 20) (make-size-data 5 5) 'blue)
                         (cons (make-rectangle (make-posn 65 20) (make-size-data 5 5) 'blue)
                               (cons (make-rectangle (make-posn 40 75) (make-size-data 20 10) 'red)
                                     (cons (make-rectangle (make-posn 45 35) (make-size-data 10 30) 'blue) empty))))) )

(draw-losh FACE)
