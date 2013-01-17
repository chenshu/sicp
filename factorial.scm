;线性递归
(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(factorial 3)
(factorial 10)

;线性迭代
(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* counter product)
               (+ counter 1)
               max-count)))

(factorial 6)

;隐藏具体实现
(define (factorial n)
  (define (fact-iter product count)
    (if (> count n)
      product
      (fact-iter (* product count)
                 (+ count 1))))
  (fact-iter 1 1))

(factorial 6)
