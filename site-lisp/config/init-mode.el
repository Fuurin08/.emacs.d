;;; init-mode.el --- emacs mode support
;;; Commentary:
;;; Code:
(defun add-to-alist (alist-var elt-cons &optional no-replace)
  "Add to the value of ALIST-VAR an element ELT-CONS if it isn't there yet.
If an element with the same car as the car of ELT-CONS is already present,
replace it with ELT-CONS unless NO-REPLACE is non-nil; if a matching
element is not already present, add ELT-CONS to the front of the alist.
The test for presence of the car of ELT-CONS is done with `equal'."
  (let ((existing-element (assoc (car elt-cons) (symbol-value alist-var))))
    (if existing-element
        (or no-replace
            (rplacd existing-element (cdr elt-cons)))
      (set alist-var (cons elt-cons (symbol-value alist-var)))))
  (symbol-value alist-var))

(dolist (elt-cons '(
		    ("\\.rs$" . rust-mode)
		    ("\\.nix\\'" . nix-mode)
		    ))
  (add-to-list 'auto-mode-alist elt-cons))

(autoload 'rust-mode "rust-mode")
(autoload 'nix-mode "nix-mode")

(provide 'init-mode)
;;; init-mode.el ends here
