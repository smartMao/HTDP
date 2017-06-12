#lang racket
(require lang/htdp-beginner)


(define (replace-eol-with alon1 alon2)
    (cond
        ((empty? alon1 ) alon2)
        (else (cons (first alon1) (replace-eol-with (rest alon1) alon2)))
    )
)

(define (our-append L1 L2 L3 L4) 
    (replace-eol-with (replace-eol-with (replace-eol-with L1 L2) L3) L4)
)

(our-append (list 'a1 'ss) (list 'a2 'a3 'a4) (list 'a6 'a8) (list 'a9 'a1))
