(ns bench-clojure.core
	(:gen-class)
)

(def MAX1 950)
(def MAXLOOP 1000)
(def MAX2 38)

(def it_total (atom 0))
(def result (atom 0.00000))

(defn rec1[it_cur]
	(if (not= it_cur MAX1)
		(do
			(reset! it_total (inc @it_total))
(reset! result 
	(+ @result 

(/ (* (Math/sqrt (/ 3123456.0 0.000123456)) (Math/cos @it_total) ) (Math/sin      (* (Math/cos (* @it_total @it_total)) 5)      ))

	)
)
			(rec1 (inc it_cur))
		)
	)
)

(defn rec2[it_cur]
	(if (not= it_cur MAX2)
		(do

(doseq [x (range 0 MAXLOOP) ] 
  (rec1 0)
)

(println (/ (* it_cur 100.00) MAX2) "%" )

(reset! it_total (inc @it_total))

(rec2 (inc it_cur))
		)
	)
)

(defn -main
	[]
	(println "Start!!")
	(rec2 0)
	(println "total iterations : " @it_total)
	(println "result : " @result)
)
