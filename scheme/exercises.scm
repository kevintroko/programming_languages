; Fahrenheit to Celsius
(define 
(f->c x)
    (* (- x 32) (/ 5.0 9))
)

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

; Construct the list ((2 1) three 2 1)
(cons 
    (cons 2 (cons 1 '()))
    (cons 'three (cons 2 (cons 1 '())))
)

; Shorcut
'((2 1) three 2 1)

; Get the second item in the list (a b c d).
(define lst5 '(a b c d))
(car (cdr lst5))

; ABSOLUTE COND
(define (>= x y)
    (or (> x y) (= x y))
)
(define (abs x)
    (cond 
        ((>= x 0) x)
        (else (- x))
    )
)

; ABSOLUTE IF
(define (abs x)
    (if (< x 0) 
        (- x)
        x
    )
)
    
; Factorial
(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))
    )
)

; Recursive linear iteration factorial
(define (factorial n)
    (fact-iter 1 1 n)
)
(define (fact-iter prod counter max-count) 
    (if (> counter max-count)
        prod
        (fact-iter (* counter product)
                   (+ counter 1) 
                   max-count))
)

; Bad fibonacci
(define (fibonacci n)
    (if (or (= n 0) (= n 1))
        n
        (+ (fibonacci (- n 1)) 
           (fibonacci (- n 2))
        )
    )
)

; Iterative fibonacci
(define (fib n)
    (fib-iter 1 0 n)
)

(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))
    )
)

; Bad exponent
(define (bp b n)
        (if (= n 0) 
            1
            (* b (bp b (- n 1)))
        )
)

; Linear exponent
(define (power_to b n)
     (exp-iter  b  n  1)
)
(define (exp-iter  b  counter  product)
     (if  (=  counter  0)
           product
           (exp-iter  b
                      (- counter 1)
                      (* b product))
    )
)

; Fast exponent
(define (crazy_function b n)
    (if (even? n)
        (square (expt b (/ n 2)))
        (* b (expt b (- n 1)))
    )
)

; Good Fast exponent
(define (fast-exp b n) 
    (cond 
        [(= n 0) 1]
        [(even? n) (square (fast-exp b (/ n 2)))]
        [else (* b (fast-exp b (- n 1)))]
    )
)

(define (even? n)
    (= (remainder n 2) 0)
)