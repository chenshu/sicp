;guess = sqrt(x)
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess
           (/ x guess)))

(define (average x y)
  (/ (+ x
        y)
     2))

(define (good-enough? guess x)
  (< (abs (- (square guess)
             x))
     0.001))

(define (sqrt-iter2 guess x)
  (if (< (abs (- (square guess)
                 x))
         0.001)
    guess
    (sqrt-iter2 (/ (+ guess
                      (/ x guess))
                   2)
                x)))

(sqrt-iter 1.0 2)
(sqrt-iter 1.0 10)
(sqrt-iter2 1.0 2)
(sqrt-iter2 1.0 10)
