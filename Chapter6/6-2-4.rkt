; 参数
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

; 位置
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (quotient WIDTH 2))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

; 颜色
(start WIDTH HEIGHT)
(draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

; 函数 draw-buld(color) ;   开灯
(define (draw-bulb color)
  (cond
    ((string=? "red" color)
       (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red) 
    )

    ((string=? "yellow" color)
       (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
    )

    ((string=? "green" color)
       (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green) 
    )
  )
)

;  开绿灯
(draw-bulb "green")
