;map usage in scheme
(map + '( 1  2  3)
       '(10 20 30))

(define g
  (lambda (x y)
    (+ x y)))

(map g '(1 2)
       '(1 2))

;因为 lambda calculus 的函数都只有一个参数，所以为了能够表示多参数的函数，有一个叫 Haskell Curry 的数学家和逻辑学家，发明了这个方法。
;Currying 其实就是用“单参数”的函数，来模拟多参数的函数。

(define f
  (lambda (x)
    (lambda (y)
    (+ x y))))

它是说，函数 f，接受一个参数 x，返回另一个函数（没有名字）。这个匿名函数，如果再接受一个参数 y，就会返回 x + y。所以上面的例子里面，(f 2) 返回的是一个匿名函数，它会把 2 加到自己的参数上面返回。
(map (f 2) '(1 2))
