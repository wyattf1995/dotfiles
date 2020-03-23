(setq gnutls-algorithm-priority "NORMAL:-VERS-TSL1.3")
(require 'package)



(prefer-coding-system 'utf-8)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
 (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

  ;; Set explicit priorities (gnu is the default package-archive)
 (setq package-archive-priorities '(("org" . 4)
                                   ("melpa" . 3)
                                   ("melpa-stable" . 2)
                                   ("gnu" . 1)))

(add-to-list 'load-path "~/.emacs.d/evil")
(add-to-list 'load-path "~/.emacs.d/elpa/org-bullets-0.2.4/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/gruvbox-theme-1.28.0/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/dracula-theme-1.5.1/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/srcery-theme-0.2.0/")


(setq inhibit-splash-screen t)
(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)")
(sequence "IN PROGRESS(p)" "|")
(sequence "WAITING(w)" "|")
(sequence "|" "CANCELED(c)")))

(setq org-M-RET-may-split-line '((item . nil)))

(set-face-attribute 'default nil :height 115 :family "Consolas")
(require 'evil)
(evil-mode 1)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq x-select-enable-clipboard nil)

(defun select-next-window ()                                                                                                                                                                                                                                                                                               
  "Switch to the next window"                                                                                                                                                                                                                                                                                              
  (interactive)                                                                                                                                                                                                                                               
  (select-window (next-window)))                                                          

(defun select-previous-window ()                                                                                                                                                                                                                                                                                     
  "Switch to the previous window"                                                                                                                                                                                                                                                                                  
  (interactive)                                                                                                                                                                                                                                                                                              
  (select-window (previous-window)))        

(global-set-key (kbd "C-<S-N>") 'select-next-window)                                                                                                                                                                                                                                                                    
(global-set-key (kbd "C-<S-P>") 'select-previous-window)

(global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "M-]") 'org-meta-return)

;; use standard keys for undo cut copy paste
;; (cua-mode 1)

(progn
  ;; org-mode setup

  ;; when opening a org file, don't collapse headings
  (setq org-startup-folded nil)

  ;; wrap long lines. don't let it disappear to the right
  (setq org-startup-truncated nil)

  ;; when in a url link, enter key should open it
  (setq org-return-follows-link t)

  ;; make org-mode” syntax color embedded source code
  (setq org-src-fontify-natively t)

  ;;
)
;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen



(package-initialize)
(package-refresh-contents)
;; (load-theme 'srcery t)
(load-theme 'dracula t)
;;(load-theme 'gruvbox-dark-hard t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" default)))
 '(package-selected-packages
   (quote
    (org-jira ace-window evil-org monitor elpa-mirror org-evil srcery-theme org-bullets dracula-theme ##)))
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
