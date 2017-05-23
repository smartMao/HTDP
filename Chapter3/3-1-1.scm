(begin 

	;; 对于给定 ticket-price (票价) 计算观众数 
	(define (attendees ticket-price)
		;; (当5美元一张票时,有 120 人观看, 当价格调低0.1后, 观众增加了15位))
		(if (= ticket-price 5) 
			120 
			(if (> ticket-price 5) 
				(- 120 (* (* (- ticket-price 5) 10) 15 ))
				(+ (* (* (- 5 ticket-price) 10) 15 ) 120)
			)
		)
	)

	;; 对于给定 ticket-price (票价) 计算收入
	(define (revenue ticket-price) 
		;; 收入 = 观众数 * 票价
		(* (attendees ticket-price) ticket-price)
	)


	;; 对于给定 ticket-price (票价) 计算支出
	(define (cost ticket-price)
		;; 支出 = 观众数 * 0.4[观众所用的固定开销] + 180 [每放一次电影的固定成本 ]
		(+ (* (attendees ticket-price) 0.4) 180)
	)

	(define (output ticket-price)
		(display "当票价为")
		(display ticket-price)
		(display "美元时收入是:")
		(display (revenue ticket-price))
		(display "\n")
		(display "当票价为")
		(display ticket-price)
		(display "美元时支出是：")
		(display (cost ticket-price))
		(display "\n")
		(display "当票价为")
		(display ticket-price)
		(display "美元时利润是：")
		(display (- (revenue ticket-price) (cost ticket-price)))
		(display "\n")
		(display "\n")
	)

	(output 5)
	(output 4)
	(output 3)
	(output 2)
	(output 1)

(newline))
