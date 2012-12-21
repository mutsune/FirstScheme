; 等比数列: a0 * (1 - rn) / (1 - r)
(define (sum-gp a0 r n)
  (* a0
     (if (= r 1)
         n
         (/ (- 1 (expt r n)) (- 1 r)))))

; ex01.1
(define (abso x)
  (if (< x 0)
      (* -1 x)
      x))

; ex01.2
(define (inv x)
  (if (= x 0)
      #f
      (/ 1 x)))

; ex01.3
(define (fgr-char x)
  (if (>= x 33)
      (if (<= x 126)
          (integer->char x)
          #f)
      #f))

; ex02.1
(define (three-pstv a0 a1 a2)
  (if
   (and
    (> a0 0)
    (> a1 0)
    (> a2 0))
   (* (* a0 a1) a2)
   #f))

; ex02.2
(define (three-ngtv a0 a1 a2)
  (if
   (or
    (< a0 0)
    (< a1 0)
    (< a2 0))
   (* (* a0 a1) a2)
   #f))

; 料金計算
(define (fee age)
  (cond
    ((or (<= age 3) (>= age 65)) 0)
    ((<= 4 age 6) 50)
    ((<= 7 age 12) 100)
    ((<= 13 age 15) 150)
    ((<= 16 age 18) 180)
    (else 200)))

; ex04.1
(define (score x)
  (cond
    ((<= 80 x) #\A)
    ((<= 60 x 79) #\B)
    ((<= 40 x 59) #\C)
    (else #\D)))


