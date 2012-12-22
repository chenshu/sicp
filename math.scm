(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (abs1 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs2 x)
  (if (< x 0)
    (- x)
    x))
