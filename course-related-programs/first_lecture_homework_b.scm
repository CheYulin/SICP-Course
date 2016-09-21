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
