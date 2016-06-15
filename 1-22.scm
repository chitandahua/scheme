(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) 
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))
;(define (timed-prime-test n)
;  (newline)
;  (display n)
;  (start-prime-test n (runtime)))
;(define (start-prime-test n start-time)
;  (if (prime? n)
;	  (report-prime (- (runtime) start-time))))
;(define (report-prime elapsed-time)
;  (display " *** ")
;  (display elapsed-time))
(define (search-prime n m)
  (newline)
  (display n)
  (cond ((= n 2)
		 ;......
		 (start-prime-test (+ n 1) (runtime) m))
		((= (remainder n 2) 0)
		 (start-prime-test (+ n 1) (runtime) m))
		(else
		 (start-prime-test n (runtime) m))))
(define (start-prime-test n start-time m)
  (cond ((= m 0) true)
		((prime? n)
		 (report-prime (- (runtime) start-time))
	     (newline)
	     (display (+ n 2))
		 (start-prime-test (+ n 2) (runtime) (- m 1)))
		(else 
	     (newline)
	     (display (+ n 2))
		 (start-prime-test (+ n 2) (runtime) m))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
;(define (area-prime start number)
;  (cond ((= number 0) 0)
;		((divides? start 2) (area-prime (+ start 1) number))
;		((timed-prime-test start) ;wrong
;		 (area-prime (+ start 2) (- number 1)))))
