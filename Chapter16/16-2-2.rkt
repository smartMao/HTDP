#lang racket
(require lang/htdp-beginner)

(define-struct dir (file dir))


(define a (make-dir 'a-file empty))
(define b (make-dir 'b-file a))
(define c (make-dir 'c-file b))

(define (how-many dir)
    (cond
        [(empty? (dir-dir dir)) 0]
        [else (+ 1 (how-many (dir-dir dir)))]
    )
)

(how-many c)
