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

; Logical Operations AND, OR and NOT
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

; One can prevent Scheme interpreter from evaluating
; a parenthesized expression by quoting it:
(quote ten) 

; or
'ten

; List constructor
(cons 1 '())

;or
(cons 1 (quote ()))

; Assigning list to variables
(define lstl (cons 1 '()))

; Assigning
(cons 2 lstl)

; Binding
(define lstl2 (cons 2 lstl))

; Shorcuts
(cons 2 (cons 1 '()))

; Bind shorcut
(define lstl3 (cons 2 (cons 1 '())))

; Parenthesis
'(three 2 1)

; Car returns first element, this case 1
(car '(1 2 3 4))

; CANT car an empty list
!INVALID! (car '()) !INVALID!

; Car 1.1 : returns a
(car '(a b c d))
; Car 1.2 : returns (2 1)
(define ls4 '((2 1) 1 2 3))
(car ls4)
; Car 1.3 : returns (1)
(car '((1) (2) (3) (4)))
; Car 1.4 : returns ab
(car '(ab (cd ef) gh))
; Car 1.5 : returns ((hen cow pig))
(car '(((hen cow pig))))
; Car 1.6 : returns a
(car '(()))

; cdr removes first element of a list: (2 3 4)
(cdr '(1 2 3 4))
; cdr 1.1: returns (1 2 3)
(cdr ls4) 
; cdr 1.2: returns ((b c) (d e f))
(cdr '(a (b c) (d e f)))
; cdr 1.3: returns ((bee hive) (wasp nest))
(cdr '((ant hill) (bee hive) (wasp nest)))
; cdr 1.4: returns ()
(cdr '(1))
; cdr 1.5: returns ()
(cdr '((1 2)))
; cdr 1.6: returns ()
(cdr '(()))

; number 1.1: returns #t
(number? -45.67) 
; number 1.2: returns #t
(number? '3) 
; number 1.3: returns #t
(define num 1)
(number? num)
; number 1.4: returns #t
(define twelve '12) 
(number? twelve) 
; number 1.5: returns #f
(number? 'twelve)
; number 1.6: returns #t
(number? (+ 2 3))
; number 1.7: returns #f
(number? #t) 
; number 1.8: returns #t
(number? (car '(15.3 -31.7))) 
; number 1.9: returns #f
(number? (cdr '(15.3 -31.7))) 

; symbol 1.1: returns #f
(symbol? 15) 
; symbol 1.2: returns #f
(symbol? num) 
; symbol 1.3: returns #t
(symbol? 'num) 
; symbol 1.4: returns #f
(symbol? twelve) 
; symbol 1.5: returns #t
(symbol? 'twelve) 
; symbol 1.6: returns #f
(symbol? #f) 
; symbol 1.7: returns #t
(symbol? (car '(banana cream))) 
; symbol 1.8: returns #f
(symbol? (cdr ' (banana cream))) 

; BOOLEAN
(boolean? #t) ;returns #t
(boolean? (number? 'a)) ;returns #t
(boolean? (cons 'a '())) ;returns #f

; PAIR
(pair? '(Ann Ben Carl)) ;returns t
(pair? '(1)) ;returns t
(pair? '()) ;returns f
(pair? '(())) ;returns t
(pair? '(a (b c) d)) ;returns t
(pair? (cons 'a '())) ;returns t
(pair? (cons 3 4)) ;returns t
(pair? 'pair) ;returns f

; NULL
(null? '()) ; t
(null? (cdr '(cat))) ;t
(null? (car '((ab)))) ;f

