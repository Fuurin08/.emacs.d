;;; init-key.el --- init lazy-load key bind
;;; Commentary:
;;; Code:

(lazy-load-global-keys
 '(
   ("d" . dirvish)
   ("w" . dirvish-dwim)
   ("s" . dirvish-side)
   )
 "init-dirvish"
 "C-c")

(lazy-load-global-keys
 '(
   ("M-s" . symbol-overlay-put)
   )
 "init-symbol-overlay")

;;(lazy-load-global-keys
;; '(("l" . popweb-dict-bing-input)
;;   (";" . popweb-dict-bing-pointer)
;;   ("p" . popweb-latex-mode))
;; "init-popweb"
;; "C-c")

;;设置C-h C-f为查询函数定义
(global-set-key (kbd "C-h C-f") 'find-function)
;;设置C-h C-v为查询变量
(global-set-key (kbd "C-h C-v") 'find-variable)
;;设置C-h C-k为查询快捷键
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;set netease-cloud-music shortkey
;;(global-set-key (kbd "M-n") 'netease-cloud-music)

(global-set-key (kbd "C-c o") 'consult-file-externally)
(global-set-key (kbd "C-c f") 'consult-locate)

(provide 'init-key)
;;; init-key.el ends here
