; 1
(define (fact n)
  (if (= n 1)
      1
      (* n (fact (- n 1)))))

; 2
(define (list*2 ls)
  (if (null? ls)
      '()
      (cons (* 2 (car ls))
            (list*2 (cdr ls)))))

; ex1.1
(define (my-length ls)
  (if (null? ls)
      0
      (+ 1 (my-length (cdr ls)))))

; ex1.2
(define (lssum ls)
  (if (null? ls)
      0
      (+ (car ls) (lssum (cdr ls)))))

; ex1.3
(define (rm ls x)
  (cond
    ((null? ls) ''())
    ((eqv? x (car ls)) (cdr ls))
    (else (cons (car ls) (rm (cdr ls) x)))))

; ex1.4
(define (find ls x)
  (find-aux ls x 0))
(define (find-aux ls x i)
  (cond
    ((null? ls) #f)
    ((eqv? x (car ls)) i)
    (else (find-aux (cdr ls) x (+ i 1)))))
