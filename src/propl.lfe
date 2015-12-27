(defmodule propl
  (doc "TODO: write docstring")
  (export (any-list  0) (list-of  1)
          (any-tuple 0) (tuple-of 1)))

(include-lib "proper/include/proper.hrl")

;;;===================================================================
;;; API
;;;===================================================================

(defun any-list ()
  "Sugar for `proper_types:list/0` since `list` is reserved in LFE."
  (proper_types:list))

(defun list-of (type)
  "Sugar for `proper_types:list/1` since `list` is reserved in LFE."
  (proper_types:list type))

(defun any-tuple ()
  "Sugar for `proper_types:tuple/0` since `tuple` is reserved in LFE."
  (proper_types:tuple))

(defun tuple-of (type)
  "Sugar for `proper_types:loose_tuple/1` since `tuple` is reserved in LFE."
  (proper_types:loose_tuple type))


;;;===================================================================
;;; Internal functions
;;;===================================================================
