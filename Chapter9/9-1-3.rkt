#lang racket
(require lang/htdp-beginner)

; 函数 add-up-3 表内的值相加
(define (add-up-3 a-list-of-3-numbers) 
  (+
     (first a-list-of-3-numbers)
     (first (rest a-list-of-3-numbers))
     (first (rest (rest a-list-of-3-numbers)))
  )
)

; 函数 distance-to-0-for-3 计算三维空间中某个点到原点的距离
(define (distance-to-0-for-3 point-3)
  (sqrt (+ (sqr (first point-3)) (sqr (first (rest point-3))) (sqr (first (rest (rest point-3)))))))

(= (distance-to-0-for-3 (cons 3 (cons 20 (cons 5 empty)))) (sqrt 434))
(= (distance-to-0-for-3 (cons 1 (cons 2 (cons 3 empty)))) (sqrt 14))

(add-up-3 (cons 3 (cons 4 (cons 5 empty))))
