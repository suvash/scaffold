;;===============================================================================
;; PACKAGES & REPOS
;;===============================================================================

(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(exec-path-from-shell

                      base16-theme

                      projectile
                      perspective
                      persp-projectile

                      flx-ido
                      ido-hacks
                      ido-completing-read+
                      ido-vertical-mode
                      smex
                      smart-mode-line

                      guide-key
                      yasnippet

                      smooth-scrolling
                      rainbow-delimiters
                      linum-relative
                      smartparens

                      evil
                      evil-leader
                      evil-smartparens

                      magit
                      git-gutter+
                      git-gutter-fringe+
                      git-timemachine

                      ag
                      deadgrep

                      flycheck
                      flycheck-yamllint

                      origami

                      company
                      dumb-jump

                      fish-mode

                      restclient

                      terraform-mode

                      nix-mode

                      elpy
                      blacken
                      py-isort

                      enh-ruby-mode

                      go-mode

                      nyan-mode
                      markdown-mode
                      web-mode
                      json-mode
                      yaml-mode

                      sql-indent
                      sqlup-mode

                      clojure-mode
                      cider

                      typescript-mode

                      intero
                      haskell-mode

                      idris-mode
                      elm-mode

                      rust-mode
                      cargo
                      racer

                      elixir-mode
                      alchemist)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;===============================================================================
;; END
;;===============================================================================

(provide 'setup-elpa-packages)
