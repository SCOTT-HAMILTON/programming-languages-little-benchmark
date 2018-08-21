(defproject bench_clojure "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :profiles {:uberjar {:aot :all
          :source-paths ["src/bench_clojure"]
          :env {:production true}
          :main bench_clojure.core}}
  :main bench-clojure.core
  :uberjar-name "bench_clojure.jar"
)
