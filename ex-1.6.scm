(define (sqrt-iter1 guess x)
  (if (< (abs (- (square guess)
                 x))
         0.001)
    guess
    (sqrt-iter1 (/ (+ guess
                      (/ x guess))
                   2)
                x)))

(sqrt-iter1 1 2)

(define (sqrt-iter2 guess x)
  (cond ((< (abs (- (square guess)
                 x))
            0.001)
         guess)
        (else (sqrt-iter2 (/ (+ guess
                               (/ x guess))
                            2)
                         x))))
(sqrt-iter2 1 2)

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;(define (sqrt-iter3 guess x)
;  (new-if (< (abs (- (square guess)
;                     x))
;             0.001)
;          guess
;          (sqrt-iter3 (/ (+ guess
;                            (/ x guess))
;                         2)
;                      x)))
;(sqrt-iter3 1 2)

;scheme对于表达式采用应用序的求值方法，既先对于操作符和操作数进行求值，后将操作符应用于操作数进行计算，对于new-if会不停的执行sqrt-iter3语句，永远不会进行if判断。而直接使用if或者cond没有问题，是因为if和cond不遵循应用序的求值方法，都会先进行操作符对操作数进行判断，然后在决定是否对操作数进行求值
