( define ( sqrt2 x ) 
	( define ( average x y )
			 ( / ( + x y ) 2 ) )
	( define ( improve guess ) 
			 ( average guess ( / x guess ) ) )
	( define ( good-enough? guess ) 
			 ( < ( abs ( - ( square guess ) x ) ) 0.001 ) )
	( define ( sqrt-iter guess )
			 ( if ( good-enough? guess ) 
				  guess 
				  ( sqrt-iter ( improve guess x ) ) ) )
	( sqrt-iter 1.0 ) )
