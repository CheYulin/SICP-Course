;loop do/while study
;https://en.wikibooks.org/wiki/Scheme_Programming/Looping
(define (sum/display lst)
  (do ((remaining lst (cdr remaining))
       (final-sum 0 (+ final-sum (car remaining))))
     ((null? remaining) final-sum)
    (display (car remaining))
    (newline)))

(sum/display '())
(sum/display '(1 2 3 7))

(define (do-usage n)
  (do ((i (- n 1) (- i 1))
      (d '() (cons i d)))
      ((< i 0) d)))

(do-usage 5)

; rotate on the second, then remove the second one in list (0 1 2 ... n-1)
(define (gao n)
 (do ((d (do ((i (- n 1) (- i 1))
              (d '() (cons i d)))
             ((< i 0) d))
         (append (cddr d) (list (car d)))))
     ((null? (cdr d)) (car d))))
(display (gao 5))
(display (gao 8))
(display (gao 4321))
(display (gao 987654321))
