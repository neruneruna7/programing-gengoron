(define-syntax when
  (syntax-rules()
    ((when cnd body ...)
     (if cnd (begin
               body ...)))))



(define (prime?x i n)
  (if (> (* i i) n) #t
      (if (= (remainder n i) 0) #f
          (prime?x (+ i 1) n))))
(define (prime? n) (prime?x 2 n))

(display (prime? 5))
(newline)

(define (print-primes i n)
  (if (> i n) #t
      (begin
        (when (prime? i) (display i) (display " "))
        (print-primes (+ i 1) n))))

(print-primes 2 1000)