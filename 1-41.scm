(define (double fun)
  (lambda (x) (fun (fun x))))
(define (inc x) (+ x 1))
(define (answer x)
  (((double (double double)) inc) x))
