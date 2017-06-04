#lang racket
(require lang/htdp-beginner)
(require htdp/draw)

; draw-circles
(define (draw-circles p list-of-radius)
    (cond
        [(empty? list-of-radius) false]
        [else
            (cond
                [(number? (first list-of-radius))
                    (and
                       (draw-circle p (first list-of-radius) 'red)
                       (draw-circles p (rest list-of-radius))
                    )             
                ]
            )
        ]
    )
)

(define p (make-posn 150 150))
(define list-of-radius (cons 66 (cons 53 (cons 109 empty))))

(start 300 300)
(draw-circles p list-of-radius)
