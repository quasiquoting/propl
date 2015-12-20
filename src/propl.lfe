(defmodule propl
  (doc "TODO: write docstring")
  (export (any-list 0)
          (list-of 1)))

(include-lib "proper/include/proper.hrl")

;;;===================================================================
;;; API
;;;===================================================================

(defun any-list ()
  "Sugar for `(proper_types:list)` since `list` is reserved in LFE."
  (proper_types:list))

(defun list-of (type)
  "Sugar for `proper_types:list/1` since `list` is reserved in LFE."
  (proper_types:list type))


;;;===================================================================
;;; Internal functions
;;;===================================================================
