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
(define (rm ls e)
  (cond
    ((null? ls) ''())
    ((equal? e (car ls)) (cdr ls))
    (else (cons (car ls) (rm (cdr ls) e)))))

; ex1.4 - not yet
(define (find ls e)
  (cond
    ((null? ls) #f)
    (else (+ (find ls e) 1))))

(find '(1 2 3 4) 3)
