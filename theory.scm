; Tutorial 1.1
(* (+ 1 39)  (- 53 45))

; Tutorial 1.2
(+ (/ 1020 39) (* 45 2))

; Tutorial 1.3
(+ 39 48 72 23 91)

; Tutorial 1.4
(/ (+ 39 48 72 23 91) 5.0)

; Define Pi
(define pi (* 2 (atan 4 0)))

; Exponential
(exp 3)
(log 5)

; Circle Radio
(define 
(circleRadio r)
    (* pi (* r r))
)

; Square
(define 
(square x)
    (* x x)    
)

; Two functions in one
(define 
(sumOfSquares x y)
    (+ (square x) (square y))
)

; Conditionals 
(define 
(abs x)
    (cond
        ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
    )
)

; Conditional FORM
(cond 
    (<p1 > <e1 >) 
    (<p2 > <e2 >)
    (<pn > <en >)
)

; If x < 0 return - x, otherwise return x.
(define 
(abs x)
    (cond
        ((< x 0) (- x))
        (else x)
    )
)

; IF - when two cases only
(define 
(abs x)
    (if (< x 0)
        (- x)
        x
    )
)

; Conditional EXAMPLE 
(define 
(example n)
    (cond 
        [(<= n 1000) .040]
        [(<= n 5000) .045]
        [(<= n 10000) .055]
        [(> n 10000) .060]
    )
)

; Conditional EXAMPLE 2
(define 
(example n)
    (cond 
        [(<= n 1000) (* .040 1000)]
        [(<= n 5000) (+ (* 1000 .040) 
        (* (- n 1000) .045))]
        [else (+ (* 1000 .040) (* 4000 .045) 
        (* (- n 10000) .055))]
    )
)

; Logical Operations
(and <e 1> ... <e n>)
(or <e 1 > ... <e n >)
(not <e>)

; Greater or equal definition
(define 
(>= x y)
   (or (> x y) (= x y))
)

; Minor or equal definition
(define 
(<= x y)
   (or (< x y) (= x y))
)

; AND
(define
(booleanOp x)
    (and (> x 5) (< x 10)) 
)

