;; Taken from https://github.com/lfex/ltest/blob/master/include/ltest-macros.lfe
(eval-when-compile
  (defun to-unders (atm)
    (re:replace (atom_to_list atm) "-" "_" '(#(return list) global)))
  (defun prop- (atm)
    (list_to_atom (++ "prop-" (atom_to_list atm)))))

(defmacro defprop arg
  "This macro is for defining PropEr properties."
  (let ((name (to-unders (car arg)))
        (body (cdr arg)))
    `(defun ,(list_to_atom (++ "prop_" name)) ()
       ,@body)
    ;; (defmacro ,(prop- (car arg)) () (,name))
    ))

(defmacro deftype arg
  "This macro is for defining PropEr types."
  (let ((name (to-unders (car arg)))
        (body (cdr arg)))
    `(defun ,(car arg) ()
       ,@body)
    ;; (defmacro ,(car arg) () (,name))
    ))

(defmacro prop-let (x raw-type gen)
  "Sugar for `?LET`."
  `(proper_types:bind ,raw-type (lambda (,x) ,gen) 'false))
