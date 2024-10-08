;; typescript mode configuration

(require 'typescript-mode)

(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-mode))

(add-hook 'typescript-mode-hook
      (lambda ()
        (setq typescript-indent-level 2)))


(provide 'configure-typescript-mode)
