(setq-default tab-width 4)
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)

(add-hook 'php-mode-hook
          (lambda ()
            (c-set-offset 'case-label' 2)
            (c-set-offset 'arglist-intro' 2)
            (c-set-offset 'arglist-cont-nonempty' 2)
            (c-set-offset 'arglist-close' 0)))

;;(load "~/.emacs.d/nxhtml/autostart.el")
;;(setq mumamo-background-colors nil)
;;(add-to-list 'auto-mode-alist '("\\.twig$" . django-html-mumamo-mode))

(load "~/.emacs.d/jinja2-mode.el")
(add-to-list 'auto-mode-alist '("\\.twig$" . jinja2-mode))

(load "~/.emacs.d/yaml-mode.el")
;;(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(user-mail-address "elf2000@users.sourceforge.net"))
(defvar po-translation-project-address
  "robot@translationproject.org"
  "Electronic mail address of the Translation Project.")
