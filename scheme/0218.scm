; Return absolute
(define(abs x)
    (cond
     ((>= x 0) x)
     (else (- x))
    )
)

; El mayor de 3 numeros
(define(max x y z)
    (cond
        ((and (>= x y) (>= x z)) x)
        ((and (>= y x) (>= y z)) y)
        (else  z)
    )
)

; if
(if 
    (> 5 2)
    #t
    (+ 1 2)
)

; MAX
(define (max a b c)
	(if (and (> a b)(> a c)) 
	     a
	 (if (and (> b a)(> b c)) 
	     b
         (if (and (> c a)(> c b)) 
	     c
          #f
         ) 
        )         
    )       
)

; 
(define (f)
    (define x 1)
    (define y 2)
    (= x y)
)

(define (x)
   (define(y) 1)
   (y)
)


; Excersise 52
(define (slide52 n)
    (cond
    ((<= n 1000) .040)
    ((<= n 5000) .045) 
    ((<= n 10000) .055) 
    ((> n 10000) .060)
    )
)

;Excercise 53
(define (slide53 n)
    (cond
        ((<= n 1000) (* .040 1000)) 
        ((<= n 5000) (+ (* 1000 .040)
            (* (- n 1000) .045))) 
        (else (+ (* 1000 .040)
                (* 4000 .045)
                (* (- n 10000) .055)))
    )
 )

; Excercise 57
(define (profit price)
 (- (* (+ 120 (* (/ 15 0.1)
    (- 5.0 price))) price)
    (+ 180 (* 0.04 (+ 120 (* (/ 15 0.1)
    (- 5.0 price))
    ))
  ))
)

; Excersise 58
(define (credit precio)
  (cond
    ((<= precio 500) (bancomer500 precio))
    ((<= precio 1500) (bancomer1500 precio))
    (( precio 2500) (bancomer2500+ precio))
   )
)
(define (bancomer500 precio)
  (* 0.0025 precio)
)
(define (bancomer1500 precio)
  (+ 
    (bancomer500 500) (* 0.0050 (- precio 500))
  )
)
(define (bancomer2500 precio)
  (+ 
    (bancomer1500 1500) (* 0.0075 (- precio 1500))
  )
)
(define (bancomerBlackCard precio)
  (+ 
    (bancomer2500 2500) (* 0.010 (- precio 2500))
  )
)