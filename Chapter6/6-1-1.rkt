(define (distance-to-0 a-posn)
  (sqrt
   (+
    (sqr (posn-x a-posn))
    (sqr (posn-y a-posn))
   )
  )
)
(distance-to-0 (make-posn 2 2))
