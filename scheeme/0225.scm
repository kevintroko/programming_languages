(define number 1)
; > number
; ~ 1
'number 

(quote number)
; ~  number

; LIST
'(1 2 3 4 5 6 7 8)
'(a 2 3 4 5 6 7 8)
'(abc 2 3 4 5 6 7 8)


(define a ''2)

; LIST of lists
'((a) (b) (#t))


(cons 1 '())
(1)

(cons '1 '(5))


(define lista '())

(cons 1 lista)


(define lista
    (cons '(a b #f) lista)
)


; lista chida
(define lista '(1 2 3 4 5))
; direccion
(car lista)
; cdr
(cdr lista)

(define lista (cdr lista))

(define lista (cons 1 lista))


(define lista '(1 2 3 4 5))
(define (ultimo l)
    (car 
        (cdr 
            (cdr 
                (cdr 
                    (cdr l)
                )
            )
        )
    )
)


(define (anidar a b c d)
(cons a
(cons b
(cons c
(cons d '()))))
)

anidar(1 2 3 4)