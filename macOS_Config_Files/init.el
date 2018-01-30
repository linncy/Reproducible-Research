
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(org-babel-do-load-languages
 'org-babel-load-languages
  '( (perl . t)         
     (ruby . t)
     (sh . t)
     (python . t)
     (emacs-lisp . t)   
     (ditaa . t) ;;add babel do load languages:ditaa -2018-01-29 16:25:25
   ))
(setq org-ditaa-jar-path "/Applications/Emacs.app/Contents/Resources/lisp/contrib/scripts/ditaa.jar");;set the path of ditaa -2018-01-29 16:25:25
;;(setq org-latex-listings 'minted) comment 2018-01-30 15:28:19
(require 'ox-latex)
;;(add-to-list 'org-latex-packages-alist '("" "minted")) comment 2018-01-30 15:28:19

(setq org-latex-create-formula-image-program 'imagemagick)
(put 'downcase-region 'disabled nil) 
(setq org-confirm-babel-evaluate nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
