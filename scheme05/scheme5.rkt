; 5.1
(define (foo)
  (begin
    (display "hello world.")
    (newline)
    (display "I love Scheme.")
    (newline)
    'done))

; 5.2 - but undefined on R5RS
(define (foo fine)
  (when fine
    (display "hello world.")
    (newline)
    (display "It is fine, today.")
    (newline)
    'done))

; 5.3 - but undefined on R5RS
(define (foo cold)
  (unless cold
    (display "hello world.")
    (newline)
    (display "It is not cold, today.")
    (newline)
    'done))

; 6.1
(define str "hello")

