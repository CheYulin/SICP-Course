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
