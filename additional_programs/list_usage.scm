;Pairs, Lists, and Scheme Syntax
;refer to http://download.plt-scheme.org/doc/html/guide/Pairs__Lists__and_Scheme_Syntax.html

;First: Pair Usage
(cons 1 2)
(car (cons 1 2))
(cdr (cons 1 2))

(pair? 1)
(pair? (cons 1 2))
(pair? (list 1 2 3))
(pair? '(1 2 3))

;Second: List Usage
;result is not a list
(cons (list 2 3) 1)
;result is a list
(cons 1 (list 2 3))
;result is not a list
(cons 0 (cons 1 2))
;result is a list, where '() represent for the end of variable, i.e, null
(define x (cons 'a (cons 'b (cons 'c (cons 'd '())))))
x
(define y (cons 1 (cons 2 (cons 3 (cons 4 '())))))
y

;list of list
(list
  (list 1 2)
  (list 3 4)
  (list 5 6))

;others
(define my_list (cons 1 (cons 2 (cons 3 (cons 4 '())))))
(car my_list)
(cdr my_list)

(cddr my_list)
(if (null? (cddddr my_list))
  (display "1\n")
  (display "2\n"))

(list (car my_list))
(append (cddr my_list) (list (car my_list)))
