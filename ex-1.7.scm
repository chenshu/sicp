(define (sqrt-iter guess x)
  (if (good-enough2? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough2? guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(sqrt-iter 1.0 0.0001)
;当求一个很小的数的平方根时，0.001的误差太大了，例如求0.0001的平方根，结果是0.03230844833048122
(sqrt-iter 1.0 100383879230494399303)
;当求一个很大的数的平方根时，机器精度表现不了两个很大的数差，所以会死循环

;good-enough2是改进的判断方法

(define (sqrt-iter2 guess oldguess x)
  (if (good-enough3? guess oldguess x)
       guess
       (sqrt-iter2 (improve guess x) guess
                   x)))

(define (good-enough3? guess oldguess x)
  (< (abs (- guess oldguess)) (* guess 0.001)))

(sqrt-iter2 1.0 2.0 0.0001)

(sqrt-iter2 1.0 2.0 100383879230494399303)

;另一个实现，算法相同
