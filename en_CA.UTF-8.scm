(load "common.scm")

(define (ordinal n)
  (if (integer? n)
      (let
          ((final (modulo n 10))
           (two-final (modulo n 100)))
        (cond
         ((in-range? 11 19 two-final) (suffix-number n "th"))
         ((eqv? final 0) (suffix-number n "th"))
         ((eqv? final 1) (suffix-number n "st"))
         ((eqv? final 2) (suffix-number n "nd"))
         ((eqv? final 3) (suffix-number n "rd"))
         ((in-range? 4 9 final) (suffix-number n "th"))))
      (error "In en_CA.UTF-8, ordinals must be integers.")))
