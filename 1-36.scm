(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
  (define (try guess)
	(display guess)
	(newline)
	;(let ((next (f guess)))
	(let ((next (/ (+ (f guess) guess) 2)))
	  (if (close-enough? guess next)
		  next
		  (try next))))
  (try first-guess))
