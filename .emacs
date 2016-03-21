;;; Global:
(require 'package)
(setq
 use-package-always-ensure t
 use-package-verbose t
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
	            ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)



;;; Editor:
(use-package evil
  :config
  (evil-mode 1)
  (global-set-key "\C-y" 'evil-scroll-up)
  (setq-default evil-shift-round nil))



;;; Scala:
(use-package scala-mode2)
(use-package ensime
  :commands ensime-mode
  :config (setq ensime-sem-high-enabled-p nil))

(add-hook 'scala-mode-hook 'ensime-mode)

;; See https://bitbucket.org/lyro/evil/issues/511/let-certain-minor-modes-key-bindings
(add-hook 'ensime-mode-hook
	  (lambda ()
            (evil-make-overriding-map ensime-mode-map 'normal)))
