(define lazy-car car)

(define (lazy-cdr ls)
  (force (cdr ls)))

(define-syntax lazy-cons
  (syntax-rules ()
    ((_ a b) (cons a (delay b)))))


