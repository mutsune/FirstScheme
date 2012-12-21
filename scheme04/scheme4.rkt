; ex1.1
(define (inc x)
  (+ x 1))

; ex1.2
(define (dec x)
  (- x 1))

; ex2.1
(define pi (* 4 (atan 1.0)))

; ex2.2
(define g 9.8)
(define (movedis vx t)
  (* vx t))

; ex2.3
(define (falltime vy)
  (/ vy g))
(define (upcast vy)
  (* (falltime vy) 2))

; ex2.4
(define (rad theta)
  (* (/ theta 180)
     pi))
(define (castdis v theta)
  (movedis (* v (cos (rad theta))) (upcast (* v (sin (rad theta))))))
