(define (curt-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
      guess
      (curt-iter (improve guess x) guess x)))

(define (good-enough? guess oldguess x)
  (< (abs (- guess oldguess))
     (abs (* guess 0.001))))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(curt-iter 1.0 2.0 0.001)
(curt-iter 1.0 2.0 -8)
(curt-iter 1.0 2.0 1e-30) 
(curt-iter 1.0 2.0 1e60) 
