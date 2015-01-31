(load "common.scm")

(define (ordinal n)
  (define (suffix s)
    (string-append (number->string n) s))
  (if (integer? n)
      (let
          ((final (modulo n 10))
           (two-final (modulo n 100)))
        (cond
         ((in-range? 11 19 two-final) (suffix "th"))
         ((eqv? final 0) (suffix "th"))
         ((eqv? final 1) (suffix "st"))
         ((eqv? final 2) (suffix "nd"))
         ((eqv? final 3) (suffix "rd"))
         ((in-range? 4 9 final) (suffix "th"))))
      (error "In en_CA.UTF-8, ordinals must be integers.")))
