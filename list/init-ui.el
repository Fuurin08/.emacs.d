;;; init-vi.el --- setting emacs ui
;;; Commentary:
;;; Code:

;;set theme
;;(use-package gruvbox-theme
;;  :init (load-theme 'gruvbox-dark-soft t))

;;(use-package gotham-theme
;;  :init (load-theme 'gotham 1))
(use-package doom-themes
  :init (load-theme 'doom-one 1))
;;(use-package nano-theme
;;  :init (load-theme 'nano-dark 1))


;;(package-install 'gotham-theme)
;;(load-theme 'gotham 1)

;;mode-line preview file-size
(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)))

;;自动选择合适的mode-line
(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

;;(setq default-frame-alist '(alpha-background . 50))
;;(push '(alpha-background . 75) default-frame-alist)



(provide 'init-ui.el)
;;; init-ui.el ends here
