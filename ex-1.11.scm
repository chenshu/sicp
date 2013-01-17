(define (func1 n)
  (if (< n 3)
    n
    (+ (func1 (- n 1))
       (* 2 (func1 (- n 2)))
       (* 3 (func1 (- n 3))))))

;(func1 24)

(define (func2 n)
  (cond ((<= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (func_iter 0 1 2 2 n))))

(define (func_iter a b c count max_count)
  (if (= count max_count)
    c
    (func_iter b c (+ c (* 2 b) (* 3 a)) (+ count 1) max_count)))

(func2 24)
