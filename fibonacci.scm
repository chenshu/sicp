(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

;(fib 40)

(define (fib n)
  (fib-iter 0 1 n))

(define (fib-iter a b count)
  (if (= count 0)
    a
    (fib-iter b (+ a b) (- count 1))))

(fib 40)
