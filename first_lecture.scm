(define A (* 5 5))

(* A A) ;-> 625

(define B (+ A (* 5 A)))

(+ A (/ B 5)) ;->55

;To Squaring Something
;Syntatic Sugar
(define (square x) (* x x))
              ;Multipliy it by self
(square 10)

;Naming
;Define symbol square2
(define square2
  (lambda (x) (* x x)))
;Make a Procedure

(square2 10.1)
(+ (square2 3) (square2 4))
(square2 (square2 (square2 1001)))
square2
;compound procedure

(define (average x y)
  (/ (+ x y) 2))

(define (mean-square x y)
  (average (square2 x)
    (square2 y)))

(mean-square 3 4)

;abs(x)
(define (abs x)
  (cond ((< x 0) (- x))
  ((= x 0 ) 0)
  ((> x 0) x)))
        ; Predicate ;Action

;syntax sugar
;if

;square_root x
(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x)x)))

(define (square_root x) try guess x)

(define (improve guess x)
  （average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square_root)))))


;definitin sqrt hash definition of improve/guess/good-enough
