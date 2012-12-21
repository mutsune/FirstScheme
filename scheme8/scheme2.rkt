; 1
(map + '(1 2 3) '(4 5 6))

(map (lambda (x) (* x x)) '(1 2 3))

; 2
(define sum 0)
(for-each (lambda (x) (set! sum (+ sum x))) '(1 2 3 4))
sum

; ex1.1
(define (dbl ls)
  (map (lambda (x) (* x 2)) ls))

; ex1.2
(define (def ls1 ls2)
  (map - ls1 ls2))
