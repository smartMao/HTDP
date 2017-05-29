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
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red) ; 红灯亮
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

; 函数 clear-bulb(color) ; 关灯
(define (clear-bulb color)
  (cond
    ((string=? "red" color)
        (and ; 让下面两语句同使用起作用
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'white) 
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
        )
    )

    ((string=? "yellow" color)
       (
          (and
           (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'white) 
           (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          )
       )
    )

    ((string=? "green" color)
       (
         (and
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'white) 
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
         )
      )
    )
  )
)

(clear-bulb "red")
