;utilility average
(define (average x y)
  (/ (+ x y) 2))

;utility square
(define (square x) (* x x))

;utility abs
(define (abs x)
  (cond
  ((< x 0) (- x))
  ((= x 0) 0)
  ((> x 0) x)))

;square_root x, recursive function
(define (try guess x)
  (if (good-enough? guess x) guess
      (try (improve guess x) x)))

;try from 1
(define (sqrt x)
  (try 1 x))

;average the guess and x as new guess
(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(sqrt 2)
(sqrt 36)
;definition sqrt has definition of (public:try, private:improve/guess/good-enough)
