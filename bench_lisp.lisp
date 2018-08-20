(defconstant MAX1 950)
(defconstant MAXLOOP 1000)
(defconstant MAX2 38)

(defvar *it_total* 0)
(defvar *result* 0.0000)

(defun f1impl(it_cur)
	(setq *it_total* (incf *it_total*))
	(setq *result* (
	+ *result*
	(/ (* (sqrt(/ 3123456.0 0.000123456 )) (cos *it_total*))
	(sin (* (cos (* *it_total* *it_total*)) 5) ))
		
	);;calc
	);;setq
	(incf it_cur)
)

(defun f1(it_cur)
(when (/= it_cur MAX1)
	(progn 
	(setq it_cur (f1impl it_cur))
	(f1 it_cur))
)

)

(defun f2impl(it_cur)

	(loop for x from 1 to MAXLOOP do
		(f1 0)
	)
	(format t" : ~$~% %" (/ (* it_cur 100) MAX2) )
	(setq *it_total* (incf *it_total*))
	(incf it_cur)
)

(defun f2(it_cur)

(when (/= it_cur MAX2)
	(progn
	(setq it_cur (f2impl it_cur))
	(f2 it_cur))
)
)

(defun main ()
	(write-line "Start!!!")
	(f2 0)
	(format t "~%total iterations : ~D~%" *it_total*)
	(format t"result : ~D~%" *result*)
)

