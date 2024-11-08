(define x (cons 1 2))
(car x)
(cdr x)

(define y (list 1 2 3))
(car y)
(cdr y)
(cdr (cdr y))
(car (cdr (cdr y)))
; (cdr (cdr (cdr y)))
; (car (cdr (cdr (cdr y))))

(newline)
; フィボナッチ数列
;f(n+1), f(n)をペアにしてConsセルにいれている
(define (ff n)
  (define (ff-iter i n ans)
    (if (= i n) ans
        (ff-iter (+ i 1) n (cons (+ (car ans) (cdr ans)) (car ans)))))
  (ff-iter 0 n (cons 1 1)))

(display (cdr (ff 10)))
(newline)

; クォートの導入
(newline)
(quote ( 1 2 3))
'(1 2 3)
(define a 'b)
(define b 'a)

(display a)
(display b)
(newline)

''(1 2 3)
(car ''(1 2 3))
(cdr ''(1 2 3))

;以下翌週

;リストの長さ 
(define (lengt lst)
  (if (null? lst) 0
      (+ (lengt (cdr lst)) 1)))

(display (lengt '(1 2 3 4 5)))
(newline)

(define (len lst)
  (define (len-iter lst res)
    (if (null? lst) res
        (len-iter (cdr lst) (+ 1 res))))
  (len-iter lst 0))

(display (len '(1 2 3 4 5 6)))
(newline)

; flatten を書いてみる 練習問題
; append
;(define (append lst1 lst2)
;  (if (null? lst1) lst2
;      (cons (car lst1) (append (cdr lst1) lst2))))

(define m '(((2 3 4)) ((4 5) ( 3 4))))
(define (flatten nest-lst)
  (define (flatten-iter lst res)
    (if (null? lst) res
        (flatten-iter (cdr lst) (append res (cdr lst)))))
  (flatten-iter nest-lst '()))

(flatten m)
