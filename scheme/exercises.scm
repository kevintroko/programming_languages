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