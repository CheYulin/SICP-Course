;http://www.ibm.com/developerworks/cn/linux/l-schm/index2.html

(let ((x 2) (y 5))
  (* x y)) ; ->10

(let ((x 5))
  (define foo (lambda (y) (bar x y)))
  (define bar (lambda (a b) (+ (* a b) a)))
  (foo (+ x 3)))

; (foo 8)
; (bar 5 8)
; (+ (* 5 8) 5)
; 45

;(let ( (…)…)     …)
;(let (intialization0 intialization1...)  exp1  exp2...)

;apply: similar to reduce
(apply + (list 2 3 4))
(apply * (list 2 3 4))
(define sum
    (lambda (x)
      (apply + x)))  ; 定义求和过程
(define list_var (list 2 3 4 5 6))
(sum list_var)

(define avg
      (lambda(x)
        (/ (sum x) (length x))))   ; 定义求平均过程
(avg list_var)

;map
(map + (list 1 2 3) (list 4 5 6))
(map car '((a . b)(c . d)(e . f)))
(map cdr '((a . b)(c . d)(e . f)))
