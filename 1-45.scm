(define (repeated f n)
  (if (= n 1)
	  f
	  (lambda (x) (f ((repeated f (- n 1)) x)))))
(define (average-dump f)
  (lambda (x) (/ (+ x (f x)) 2)))
(define (mypower n)
  (lambda (x)
	(cond ((= n 0) 1)
		  ((= (remainder n 2) 0) (square ((mypower (/ n 2)) x)))
		  (else (* ((mypower (- n 1)) x) x)))))
(define (get-times n times x)
  (fixed-point (repeated (average-dump 
						   (lambda (y) (/ x ((mypower (- n 1)) y)))) times)
			   1.0))
