(define A (* 5 5))

(* A A) ;-> 625

(define B (+ A (* 5 A)))

(+ A (/ B 5)) ;->55

;To Squaring Something
;Syntatic Sugar
(define (square x) (* x x))

(square 10)

;Naming
;Define symbol square2 ;Make a Procedure
(define square2
  (lambda (x) (* x x)))

(square2 10.1)
(+ (square2 3) (square2 4))
(square2 (square2 (square2 1001)))
square2

(define (average x y)
  (/ (+ x y) 2))
  
(average 1 2)

(define (mean-square x y)
  (average (square2 x)
    (square2 y)))

(mean-square 3 4)

;abs(x); cond usage
(define (abs x)
  (cond
  ((< x 0) (- x))
  ((= x 0) 0)
  ((> x 0) x)))
  ; Predicate ;Action

(abs -1)
(abs 2)

;syntax sugar: if exp1 exp2(not true case)
(define (whether_zero x)
  (if (= x 0)
    (display "is zero\n")
    (display "not zero\n")))

(whether_zero 1)
(whether_zero 0)
