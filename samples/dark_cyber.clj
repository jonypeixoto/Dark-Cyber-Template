(comment
  "In a land shrouded in mystery...")

(ns clj-dark-cyber)

(defstruct dark-cyber :name :construction-year :destruction-year :features)

(defn age
  [cyber] (- (cyber :destruction-year) (cyber :construction-year)))

;; ...there stood a Dark Cyber
(let [c (struct dark-cyber "Starfall Keep" 1100 1678 '("Mystical Lights" "Ancient Walls"))]
  (println (age c)))
