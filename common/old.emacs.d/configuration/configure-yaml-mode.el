;; yaml major mode

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(provide 'configure-yaml-mode)
