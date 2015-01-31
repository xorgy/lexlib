(define (eqv-any? v vs)
  (cond
   ((null? vs) #f)
   ((eqv? v (car vs)))
   (else (eqv-any? v (cdr vs)))))

(define (in-range? a b c)
  (if (<= a b)
      (and (>= c a) (<= c b))
      (in-range? b a c)))

(define (suffix-number n s)
  (string-append (number->string n) s))
