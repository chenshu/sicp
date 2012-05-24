(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;操作符可以是复合表达式
