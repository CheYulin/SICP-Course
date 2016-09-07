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

;First Implementation
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

;Second Implementation
;definition sqrt has definition of (public:try, private:improve/guess/good-enough)
(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
        0.001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1))

;Test
(sqrt 2)
(sqrt 36)
