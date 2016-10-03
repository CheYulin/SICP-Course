(define (sum_int a b)
  (if (> a b)
      0
      (+ a
        (sum_int (1+ a) b))))

(sum_int 3 7)

(define (sum_square a b)
  (if (> a b)
      0
      (+ (* a a)
        (sum_square (1+ a) b))))

 (sum_square 1 2)

(define (sum_pi a b)
  (if (> a b)
      0
      (+ (/ 1 (* a (+ a 2)))
        (sum_pi (+ a 4) b))))

(sum_pi 1 10)

;high-order function
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
        (sum term
             (next a)
              next
              b))))

(define (sum_int a b)
  (define (identity a) a)
  (sum identity a 1+ b))

(sum_int 3 7)

(define (sum_square a b)
  (define (square a) (* a a))
  (sum square a 1+ b))

 (sum_square 1 2)

(define (sum_pi a b)
  (sum (lambda (i) (/ 1 (* i (+ i 2))))
        a
        (lambda (i) (+ i 4))
        b))

(sum_pi 1 10)

(define (fix_point f start)
  (define tolerance 0.00001)

  (define (iter old new)
    (if (close-enough? old new)
        new
        (iter new (/ (f new)))))
   (iter start (f start)))

(define (sqrt x)
  (fix_point
    (lambda (y) (average (/ x y) y))

    1))
(define average_damp
  (lambda (f)
    (lambda(x)(average (f x) x))))

(define (sqrt x)
  (fix_point
    (average_damp (lambda (y) (/ x y)))
    1))

(define (sqrt x)
  (newton (lambda (y)(- x (q y))
          1)))

(define (newton f guess)
  (define df (deriv f))
  (fix_point
    (lambda(x)(- x (/ (f x)))
    guess
    ))
  )

(define dx 0.000001)

(define deriv
  (lambda (f)
    (lambda(x)
      (/ (- (f (+ x dx))
            (f x))
          dx))))
