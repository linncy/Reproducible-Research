
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setenv "PATH" (concat "/usr/bin" (getenv "PATH")))
(setq exec-path (append '("/usr/bin") exec-path))

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(org-babel-do-load-languages
 'org-babel-load-languages
  '( (perl . t)         
     (ruby . t)
     (sh . t)
     (python . t)
     (emacs-lisp . t)   
   ))

(setq org-latex-listings 'minted)
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))

(setq org-latex-create-formula-image-program 'imagemagick)
(put 'downcase-region 'disabled nil)
(setq org-confirm-babel-evaluate nil)
