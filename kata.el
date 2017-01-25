;; Set a global counter of the number of failed test runs
(setq kata/failed-runs 0)

(defun kata/run-with-output (label result)
  "Print a human-readable version of combining label and result. Increment the number of failed runs if result is incorrect"
  (message (concat label ": " (number-to-string result)))
  (unless (= 21 result) (setq kata/failed-runs (+ 1 kata/failed-runs)))
  )


(defun kata/add-for (list count sum)
  "Add to sum each number in list for count iterations"
  (if (= 0 count) sum
    (progn
      (setq sum (+ (car list) sum))
      (kata/add-for (cdr list) (- count 1) sum))))

(kata/run-with-output "kata/add-for" (kata/add-for '(1 2 3 4 5 6) 6 0))

(defun kata/add-while (numbers)
  "Add each number in numbers using a while-loop, return the sum of numbers"
  (setq sum 0)
  (while numbers
    (setq sum (+ sum (car numbers)))
    (setq numbers (cdr numbers)))
  sum)

(kata/run-with-output "kata/add-while" (kata/add-while '(1 2 3 4 5 6)))

(defun kata/add-by-recursion (numbers sum)
  "Add each numbers in numbers to sum, then return"
  (if numbers
      (progn
        (setq sum (+ sum (car numbers)))
        (kata/add-by-recursion (cdr numbers) sum)
        )
    sum))

(kata/run-with-output "kata/add-by-recursion" (kata/add-by-recursion '(1 2 3 4 5 6) 0))

;; Exit Emacs with a non-zero status if there have been errors
(unless (= 0 kata/failed-runs)
  (progn
    (error (kill-emacs 1))))
