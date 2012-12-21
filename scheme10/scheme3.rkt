; 2
(define bank-account
  (let ((amount 1000))
    (lambda (n)
      (set! amount (+ amount n))
      amount)))

(define (make-bank-account amount)
  (lambda (n)
          (set! amount (+ amount n))
          amount))

; ex
(define (make-positive-bank-account amount)
  (lambda (n)
      (if (negative? (+ amount n))
          'error
          (set! amount (+ amount n)))))
