;1.1
10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;1.2
(/ (+ 5 4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;1.3
(define (bigger x y z) (if (> x y)
                           (if (> y z)
                               (+ x y)
                               (+ x z))
                           (if (> x z)
                               (+ x y)
                               (+ y z))))
(bigger 1 2 3)
(bigger 1 3 2)
(bigger 3 2 1)
(bigger 3 1 2)
(bigger 2 1 3)
(bigger 2 3 1)

;1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;1.5
(define (p) (p))
(define (test x y) (if (= x 0)
                       0
                       y))
(test 0 (p))
;正则序的结果是0，而应用序的结果是死循环，因为正则序是先展开后归约，所以可直接得出0，而不会取求P的值，但是应用序是先代入参数求值，再进行应用于复合过程，会执行P的定义，造成死循环
