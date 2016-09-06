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
  
