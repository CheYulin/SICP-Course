;for-each usage demo; applay lambda expression on a list '(1 2 3)
(begin
  (for-each
    (lambda (x)
      (display x)(display " "))
        (map (lambda (y)
              (1+ y)) '(1 2 3)))
  (newline))

;varadic parameter demo
(define (myprint string . param)
  (display string)
  (for-each (lambda (x) (display x) (display " ")) param)
  (newline)
)

(myprint "begin print" 1 2 3 4 5)

(myprint "print...")

;To Do:hamno-tower-game left impl
; from, to, spare are just the names
(define (move n from to spare)
  (if (= n 0)
    (myprint "done")
    (begin
      (move (1- n) from spare to)
      (myprint "move strategy:" from to)
      (move (1- n) spare to from))))

(move 4 1 2 3)


;Following are all not correct ...
;iteration-based fib
(define (fib n)
  (define v (make-vector n -1))

  (vector-ref v (- n 1)))

;look-up-based fibonacci, save the info in list
(define (fib-loop-up n)
  (define v (make-vector n -1))
  (fib n))

(define (fib n)
    (if (< n 2)
    n
    (begin
      (cond (= (vector-ref v (- n 1)) -1)
          (vector-set! v (- n 1) (+ (fib (- n 1)) (fib (- n 2)))))
        (vector-ref v (- n 1))
      )))

(fib-loop-up 4)
