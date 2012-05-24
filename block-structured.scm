(define (sqrt-iter guess x)
    (define (good-enough? guess)
      (< (abs (- (square guess)
                 x))
         (abs (* guess 0.001))))
    (define (improve guess)
      (/ (+ guess 
            (/ x guess))
         2))
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess) x)))

(sqrt-iter 1.0 9)
