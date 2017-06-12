#lang racket
(require lang/htdp-beginner)

(define-struct dir (name content))

(define Code (make-dir 'Code (list 'hang 'draw)))
(define Docs (make-dir 'Docs (list 'read!)))
(define Text (make-dir 'Text (list 'part1 'part2 'part3)))
(define Libs (make-dir 'Libs (list Code Docs)))
(define TS (make-dir 'ts (list 'read! Text Libs)))

(define (how-many dir)
  (count-files (dir-content dir)))

(define (count-files lofd)
  (cond
    [(empty? lofd) 0]
    [(symbol? (first lofd)) (+ 1 (count-files (rest lofd)))]
    [else (+ (how-many (first lofd)) (count-files (rest lofd)))]
  )
)


(how-many TS)
