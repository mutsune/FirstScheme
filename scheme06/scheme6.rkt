(define (quadric-equation a b c)
  (if (zero? a)
      'error
      (let ((d (- (* b b) (* 4 a c))))
        (if (negative? d)
            '()
            (let ((e (/ b a -2)))
              (if (zero? d)
                  (list e)
                  (let ((f (/ (sqrt d) a 2)))
                    (list (+ e f) (- e f)))))))))

; ex 1
(define (castdis v theta)
        (let ((pi (* 4 (atan 1.0))))
          (* 
          (* v (cos (* (/ theta 180) pi)))
          (* (let ((g 9.8))
               (/ (* v (sin (* (/ theta 180) pi)))
                  g))
             2))))
