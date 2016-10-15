(((lambda (f)
  ((lambda (x) (f (lambda (v) ((x x) v))))
   (lambda (x) (f (lambda (v) ((x x) v))))))
  (lambda (fact)
    (lambda (n)
      (cond ((zero? n) 1)
        (else (* n (fact (1- n))))))))
5)

(define Y
  (lambda (f)
    ((lambda (x) (f (lambda (v) ((x x) v))))
     (lambda (x) (f (lambda (v) ((x x) v)))))))

((Y (lambda (fact)
      (lambda (n)
        (cond ((zero? n) 1)
          (else (* n (fact (1- n))))))))
5)
