#lang racket
(require lang/htdp-beginner)

(define-struct staff ( name id wages ))
(define-struct work  ( name hours ))

(define (weekly-wage list-of-staff list-of-work)
    (cond
        [(empty? list-of-staff) empty]
        [else
           (list
              (list
                 (staff-name (first list-of-staff))
                 (* (staff-wages (first list-of-staff)) (work-hours (first list-of-work)))
              )
              (weekly-wage (rest list-of-staff) (rest list-of-work))
           )
        ]
    )
)

(define list-of-staff (list (make-staff 'a 111 25) (make-staff 'b 222 36) (make-staff 'c 333 13) ))
(define list-of-work  (list (make-work 'a 67) (make-work 'b 51) (make-work 'c 55) ))

(weekly-wage list-of-staff list-of-work)
