(define (sq x)
  (* x x))

(define (sos x y)
  (+ (sq x) (sq y)))

(sos 3 4);->25

;recursive
(define (+ x y)
  (if (= x 0)
      y
      (+ (1- x) (1+ y))))

(+ 3 4)

;add the one later
(define (+ x y)
  (if (= x 0)
      y
      (1+ (+ (1- x) y))))

(+ 3 4)

;bad implementation/processing, e.g fib5 = fib4 + fib3 where share fib3 twice
;time complexity=O(fib(n))
;space complexity=O(n) ,i.e, longest path
(define (fib n)
  (if (< n 2)
    n
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 4)
