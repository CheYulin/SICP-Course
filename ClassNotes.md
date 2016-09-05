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
