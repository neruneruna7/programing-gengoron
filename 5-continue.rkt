(define (lengt lst)
  (if (null? lst) 0
      (+ (lengt (cdr lst)) 1)))

(display (lengt '(1 2 3 4 5)))

