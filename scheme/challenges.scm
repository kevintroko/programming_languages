; Define la función que-es la cual recibe un parametro x. La funcion 
; valida el valor x, despues regresa el nombre de su tipo de dato. Es
; necesario usar predicados para cada validacion, así como la función
; cond. Cualquier caso no definido regresa #f
(define (que-es x)
    (cond 
        [(number? x)  'numero]
        [(boolean? x) 'booleano]
        [(list? x) 
            (if (pair? x)
                'lista-no-vacia
                'lista-vacia
            )
        ]
        [(symbol? x) 'simbolo]
        [else #f]
    )
)

; Define funcion recursiva elemento-n la cual recibe 2 parametros, n y lista
; n es un entero mayor a cero, lista es una lista no vacia. la funcion
; regresa el elemento en la posicion n de la lista. Es necesario validar 
; que los valores de los parametros sean correctos
; cualquier caso regresa #f
(define (elemento-n n lista)
        (if (and (number? n) (and (list? lista) (pair? lista)))
            (cond 
                [(= n 0) (car lista)]
                [else (elemento-n (- n 1) (cdr lista))]
            )
            #f
        )
)

; Define la funcion iterativa suma-lista la cual recibe un parametro lista.
; lista no es vacia, la funcion valida cada uno de los elementos en lista.
; Si el elemeto no es numerico la funcion lo ignora, en caso contrario 
; los suma en posiciones pares y resta en posiciones nones. Es necesario 
; validar que los parametros sean correctos, cualquier otro regresa #f
(define (suma-lista l)
    (suma-lista-helper l 0)
)
(define (suma-lista-helper l count)
    (cond
        [ (= (length l) 0)  count ]
        [ else 
           (if (even? (length l))
           (suma-lista-helper (cdr l) (+ count (car l)))
           (suma-lista-helper (cdr l) (- count (car l)))
           )
        ]
    )
)

; Define la funcion recursiva elimina-elemento, el cual recibe dos parametros
; e y lista. e es un entero o un simbolo. lista en una lista no vacia. La
; funcion regresa el contenido de lista (vacia o no vacía) eliminando todas
; las ocurrencias de e. Es necesario validar que los valores de los parametros
; sean correctos, cualquier caso regresa #f.
(define (elimina-elemento e l)
        (if [and (pair? l) (or (number? e) (symbol? e))]
            e
            #f
        )
)

; Define la funcion iterativa suma-x, la cual recibe dos parametros a y b.
; a y b son enteros mayores a cero. La funcion regresa el resultado de la 
; siguiente operacion (a^b + b^a) la funcion expt no debe de ser utilizada.
; es necesario validar que los parametros sean correctos. Cualquier otro caso
; no definido regresa #f
(define (suma-x a b)
        (if [and (> a 0) (> b 0)]
            (+ (not-expt-function a b) (not-expt-function b a))
            #f
        )
)
(define (not-expt-function x n)
    (if (= n 0)
        1
        (* x (not-expt-function x (- n 1)))
    )
)

