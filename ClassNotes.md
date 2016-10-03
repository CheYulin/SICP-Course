#MIT-Course
#First Lecture
##Introduction
- Abstraction, Black-Box(Express detail to Build Big Boxes)
- Procedure(Imperative Knowledge)

##Black-Box Abstraction For Lisp
##Conventional Interface(to Express General Ideas)
- Generic Operations
- Large-Scale Structures and  Modularity
- OOP
- Operations on Aggregates

##Meta-Linguistic Abstraction
- Apply, Eval - Interpretation
- (YF) = (F (YF))
- Logical Programming

##Lisp
###Primitive Elements
- (+ 3 17.4 5) -> 25.4
- Combination, + is the operator, others are operands
- (+ 3 (* 5 6) 8 2) -> 43, combinations could be operands
- prefix notation, pair-brackets means combinations(tree, sub-trees)
- I expriment with guile installed on my computer, not powerful yet
###Means of Combination
###Means of Abstraction
- First
  - sqrt
  - try try (recursive definition)  
  - good-enough？   improve
  - abs square         average

- Second
  - 36 -> Black-Box(public:sqrt, private:try/good-enough/improve) -> 6
  - block structure, packaging internal definition

##Summary
- Primitive-Elements(+ * < = 23 1.738)
- Comibination(()composition, cond, if)
- Abstraction(define)

##Eg
- (define a (* 5 5 ))   ; a -> 25 ; (a) error, 25 could not be applied to something
- (define (d) (* 5 5)) ; d -> compound procedure d ;(d)->25

#Second Lecture
##Procedures & Processors
###Simple
- Kinds of Expressions
- Numbers
- Symbols
- Lambda Expressions
- Definitions
- Conditionals
- Most important: **Combinations(General)**
###Substitution Rule
- eval operator to get Procedure
- eval operands to get arguments
- aplly procedure to the arguments
- copy the body of procedure, substitude arguments supplied
```scheme
(sos 3 4)
(+ (sq 3) (sq 4))
;now consider *procedure is primitive
(+ (sq 3) (* 4 4))
(+ (sql 3) 16)
(+ (* 3 3) 16)
(+ 9 16)
;->25
```

- conditional
```scheme
(if predicate
  consequent
  alternative)
```

- comparison
```scheme
;recursive
(define (+ x y)
  (if (= x 0)
      y
      (+ (1- x) (1+ y))))

(+ 3 4)

;add the one later
(define (+ x y)
  (if (= x 0)
      y
      (1+ (+ (1- x) y))))

(+ 3 4)
```
- comparison(processing)  Iteration vs Recursion
```zsh
;Called Linear Iteration
first one: straight       |t
(+ 3 4) ->reduce to       |i
(+ 2 5) ->reduce to       |m
(+ 1 6) ->reduce to       |e = O(x)
(+ 0 7)                  
got 7
----------------------space=O(1)
GJS -> 3,4 GJS -> ... final one pass to first one


;Called Linear Recursion
second one: span out and back
(+ 3 4)                    |t
(+1 (+ 2 4))               |i
(+1 (+1 (+ 1 4)))          |m
(+1 (+1 (+1 (+ 0 4))))     |e = O(x)
(+1 (+1 (+1 4)))
(+1 (+1 5))
(+1 6)
got 7
----------------------space=O(x)
GJS -> GJS ...     ->
    <-             <-
```

- fibonacci
  - e.g, 0 1 1 2 3 5 8 13 21 34 55
```scheme
;tree
;bad implementation/processing, e.g fib5 = fib4 + fib3 where share fib3 twice
;time complexity=O(fib(n))
;space complexity=O(n) ,i.e, longest path
(define (fib n)
  (if (< n 2)
    n
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 4)
```
- hamno-tower-game

##Third Lecture
###High-Order Functions
- e.g, function accepts function as arguments
- with high-order we can only change sum from recursion to iteration without change the `sum_pi`, `sum_int`, `sum_square`
  - this is decoupling, cool  
- e.g, `square_root`
  - y -> (y + x/y)/2
  - f(sqrt(x)) = sqrt(x)
  - we are looking forward to a fix-point of function f
- some functions have that property to iterate to reach the fix-point   
- g maps y to x/y, 1 to 2, 2 to 1, not converge...

```scheme
(define (average__damp) f)
  (define (foo x)
    (average (f x) x))
```

- y_{n+1} = y_{n} - frac{f(y_n)}{frac{df}{dy}|_{y=y_n}}  
- good picture demostration for newton's method
- first-class citizens
  - to be named as variables
  - to be passed as arguments of procedures
  - to be returned as values of procedures
  - to be incorporated into data structures
