;;; package --- Summary
;;; Commentary:
(require 'package)
;;; Code:
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "marmalade" (concat proto "://marmalade-repo.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bongo-enabled-backends
   (quote
    (mpg123 vlc mplayer ogg123 speexdec timidity mikmod afplay)))
 '(company-tooltip-idle-delay 0.1)
 '(custom-safe-themes
   (quote
    ("a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(emms-player-mplayer
   (quote
    (*player*
     (start . emms-player-mplayer-start)
     (stop . emms-player-mplayer-stop)
     (playablep . emms-player-mplayer-playable-p)
     (regex . "\\`\\(http[s]?\\|mms\\)://\\|\\.\\([Oo][Gg][Gg]\\|[Mm][Pp]3\\|[Ww][Aa][Vv]\\|[Mm][Pp][Gg]\\|[Mm][Pp][Ee][Gg]\\|[Ww][Mm][Vv]\\|[Ww][Mm][Aa]\\|[Mm][Oo][Vv]\\|[Aa][Vv][Ii]\\|[Dd][Ii][Vv][Xx]\\|[Oo][Gg][Mm]\\|[Oo][Gg][Vv]\\|[Aa][Ss][Ff]\\|[Mm][Kk][Vv]\\|[Rr][Mm]\\|[Rr][Mm][Vv][Bb]\\|[Mm][Pp]4\\|[Ff][Ll][Aa][Cc]\\|[Vv][Oo][Bb]\\|[Mm]4[Aa]\\|[Aa][Pp][Ee]\\|[Ff][Ll][Vv]\\|[Ww][Ee][Bb][Mm]\\|[Aa][Ii][Ff]\\)\\'")
     (pause . emms-player-mplayer-pause)
     (resume)
     (seek . emms-player-mplayer-seek)
     (seek-to . emms-player-mplayer-seek-to))))
 '(emms-player-mplayer-parameters (quote ("-slave" "-quiet" "-really-quiet")))
 '(emms-player-mplayer-playlist
   (quote
    (*player*
     (start . emms-player-mplayer-playlist-start)
     (stop . emms-player-mplayer-playlist-stop)
     (playablep . emms-player-mplayer-playlist-playable-p)
     (regex . "\\`http[s]?://")
     (pause . emms-player-simple-pause)
     (resume . emms-player-simple-resume))))
 '(etcc-use-color t)
 '(global-company-mode t)
 '(package-selected-packages
   (quote
    (airline-themes spaceline-all-the-icons spaceline powerline-evil powerline spacemacs-theme emamux-ruby-test emamux color-theme-molokai color-theme-approximate gruvbox-theme color-theme-sanityinc-tomorrow color-theme-wombat sound-wav mpv emms-player-simple-mpv evil-terminal-cursor-changer evil-tabs dionysos bongo emms-mode-line-cycle emms-state emms-bilibili helm-emmet emmet-mode helm-git magit helm-projectile helm-unicode helm ycmd eslint-fix elisp-lint 0blayout flycheck-ycmd company-ycmd neotree 2048-game smex yasnippet-snippets yasnippet w3m nyan-mode figlet symon doom-themes ample-theme monokai-theme autopair company-lua company-c-headers company evil-indent-textobject evil-leader use-package ace-window evil-visualstar evil-surround evil-nerd-commenter evil-matchit evil-escape)))
 '(w3m-default-display-inline-images t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(use-package color-theme-approximate
  :ensure t
  :config
  (color-theme-approximate-on)
)
(load-theme 'monokai t)
;;evil key binds
(with-eval-after-load 'evil
  ;; use evil mode in the buffer below.
  (add-to-list 'evil-buffer-regexps '("\\*Packages\\*" . normal))
  ;(add-to-list 'evil-buffer-regexps '("\\*NeoTree\\*" . normal))
  (add-to-list 'evil-buffer-regexps '("\\*Help\\*" . normal))
  ;(add-to-list 'evil-buffer-regexps '("\\*\\*" . normal))
  (add-to-list 'evil-buffer-regexps '("2048" . insert))
  (add-to-list 'evil-buffer-regexps '("w3m" . insert))
  )
;;powerline
(use-package powerline
  :ensure t
  :config
  (require 'powerline)
  (require 'powerline-evil)
                                        ;(powerline-evil-vim-color-theme)
                                        ;(powerline-default-theme)
  (require 'airline-themes)
  (load-theme 'airline-molokai) 
  )
;;auto pair
;; (use-package spaceline
;;   :ensure t
;;   :config
;;   (spaceline-emacs-theme)
;;   )
;; (use-package spaceline-all-the-icons
;;   :ensure t
;;   :after spaceline
;;   :config
;;   (spaceline-all-the-icons-theme)
;;   (spaceline-all-the-icons--setup-package-updates)
;;   (spaceline-all-the-icons--setup-git-ahead)
;;   (spaceline-all-the-icons--setup-neotree)
;;   )
(electric-pair-mode 1)
(setq eletric-pair-pairs '(
        (?\` . ?\`)
        (?\( . ?\))
        (?\[ . ?\])
        (?\{ . ?\})
	))
(setq-default indent-tabs-mode nil)
(global-set-key (kbd "M-p") 'ace-window)
;; (use-package symon
;;   :ensure t
;;   :config
;;   (symon-mode)
;;   ;;(setq symon-sparkline-type gridded)
;;   )
(use-package nyan-mode
  :ensure t
  :config
  (nyan-mode)
  (setq nyan-animate-nyancat t)
  (setq nyan-wavy-trail t)
  )
(require 'evil)
(use-package evil
  :ensure t
  :config
  (require 'evil-leader)
  (setq evil-leader/in-all-states 1)
  (global-evil-leader-mode)
  (evil-mode 1)
  (unless (display-graphic-p)
	(require 'evil-terminal-cursor-changer)
    (evil-terminal-cursor-changer-activate) ; or (etcc-on)
    )
  (setq evil-emacs-state-cursor '("#ff0000" box))
  (setq evil-normal-state-cursor '("#00cc00" box))
  (setq evil-visual-state-cursor '("#ff3300" box))
  (setq evil-insert-state-cursor '("#ff0000" bar))
  (setq evil-replace-state-cursor '("#ff0000" bar))
  (setq evil-operator-state-cursor '("#ff0000" hbar))
  ;; More configuration goes here
  (use-package evil-leader
	:ensure t
	:config
	(evil-leader/set-leader ";")
	(evil-leader/set-key;;Put your Vim style shortcut here.
	  "ci" 'evilnc-comment-or-uncomment-lines
	  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
	  "cc" 'evilnc-copy-and-comment-lines
	  "cp" 'evilnc-comment-or-uncomment-paragraphs
	  "cr" 'comment-or-uncomment-region
	  "cv" 'evilnc-toggle-invert-comment-line-by-line
	  "."  'evilnc-copy-and-comment-operator
	  "\\" 'evilnc-comment-operator ; if you prefer backslash key
	  "mc" 'evil-search-highlight-persist-remove-all
	  "mb" 'helm-my-buffers
	  "f"  'neotree-toggle
	  "z"  'other-window
	  "h"  'evil-window-left
	  "j"  'evil-window-down
	  "k"  'evil-window-up
	  "l"  'evil-window-right
	  "b"  'switch-to-buffer
	  "k"  'kill-buffer
	  "en" 'next-error
	  "ep" 'previous-error
	 )
	)
  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode)
	)
  (use-package evil-indent-textobject
    :ensure t
	)
  (use-package evil-visualstar
	:ensure t
	:config
	(global-evil-visualstar-mode)
	)
  (use-package evil-search-highlight-persist
	:ensure t
	:config
	(global-evil-search-highlight-persist t)
	)
  )
(use-package emms
  :ensure t
  :config
  (emms-all)
  (emms-default-players)
  (require 'emms-player-simple-mpv)
  (require 'emms-player-simple-mpv-control-functions)
  (setq emms-player-mpv-debug t)
  (setq emms-player-mplayer-debug t)
  (require 'emms-cue)
  (add-to-list 'emms-info-functions 'emms-info-cueinfo)
  (define-emms-simple-player-mpv my-mpv '(file url streamlist playlist)
    (concat "\\`\\(http[s]?\\|mms\\)://\\|"
            (apply #'emms-player-simple-regexp
                   "aac" "pls" "m3u"
                   emms-player-base-format-list))
    "mpv" "--terminal=no" "--force-window=no" "--audio-display=no")

  (emms-player-simple-mpv-add-to-converters
   'emms-player-my-mpv "." '(playlist)
   (lambda (track-name) (format "--playlist=%s" track-name)))
  (setq emms-player-list '(;emms-player-my-mpv
			   emms-player-mplayer
		           emms-player-mpv))
  (use-package emms-bilibili
	:ensure t
	:config
	(setq emms-bilibili-mid 206628925)
	)
  (use-package emms-state
	:ensure t
	:config
	(eval-after-load 'emms '(emms-state-mode))
	)
  )
(use-package helm
  :ensure t
  :config
  (require 'helm-config)
  (setq helm-quick-update t)
  (setq helm-bookmark-show-location t)
  (setq helm-buffers-fuzzy-matching t)
  (use-package helm-projectile
	:ensure t
	)
  (global-set-key (kbd "M-h") 'helm-M-x)
  (defun helm-my-buffers ()
	(interactive)
	(let ((helm-ff-transformer-show-only-basename nil))
      (helm-other-buffer '(helm-c-source-buffers-list
                           helm-c-source-elscreen
                           helm-c-source-projectile-files-list
                           helm-c-source-ctags
                           helm-c-source-recentf
                           helm-c-source-locate)
						 "*helm-my-buffers*")))
  )
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (define-key company-active-map (kbd "RET") 'company-complete-selection)
  ;(define-key company-active-map [return] 'company-complete-selection)
  (define-key company-active-map (kbd "ESC") 'company-abort)
  ;(define-key company-active-map [tab] 'company-complete-common-or-selection)
  (define-key company-active-map (kbd "?\t") 'company-complete-common-or-selection)
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "C-n") #'company-select-next)
	(define-key company-active-map (kbd "C-p") #'company-select-previous)
	)
  (setq company-minimum-prefix-length 3)
  )
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  )
(use-package ycmd
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-ycmd-mode)
  (set-variable 'ycmd-global-config "/home/thomas/ycmd/.ycm_extra_conf.py")
  (set-variable 'ycmd-server-command `("python" ,(file-truename "~/ycmd/ycmd/")))
  )
(use-package company-ycmd
  :ensure t
  :config
  (company-ycmd-setup)
  )
(use-package flycheck-ycmd
  :ensure t
  :config
  (flycheck-ycmd-setup)
  )
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1)
  )

(use-package linum
  :ensure t
  :config
  (global-linum-mode 1)
  (add-hook 'term-mode-hook (lambda () (linum-mode -1)))
  (add-hook 'w3m-mode-hook (lambda () (linum-mode -1)))
  (add-hook 'help-mode-hook (lambda () (linum-mode -1)))
  (setq linum-format "%d ")
  )

;; evil keys
(require 'neotree)
; Emacs key bindings(nerd commenter)
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

; Vim key bindings
;;neotree
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(setq-default neo-show-hidden-files t)
;;smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(use-package emamux
  :ensure t
  :config
  (require 'emamux)
  )
;;other settings
;reload ~/.emacs
(defun reload-init-file ()
  (interactive)
  (load-file "~/.emacs"))
(global-set-key (kbd "C-c C-l") 'reload-init-file)
;buffer switching
(global-set-key (kbd "<C-M-left>") 'previous-buffer)
(global-set-key (kbd "<C-M-right>") 'next-buffer)
(setq org-startup-indented t);set org indent mode
(global-set-key (kbd "C-x C-t") 'term);call terminal
(setq vc-follow-symlinks t);follow symlink by default
;; update title of term
(defun update-title ()
  (interactive)
  (if (getenv "STY")	; check whether in GNU screen
	  (send-string-to-terminal (concat "\033k\033\134\033k" "Emacs("(buffer-name)")" "\033\134"))
	(send-string-to-terminal (concat "\033]2; " "Emacs("(buffer-name)")" "\007"))))
(add-hook 'post-command-hook 'update-title)
;; xsel
(defmacro with-x-environment (&rest body)
  `(let ((process-environment
      (cons (concat "DISPLAY=" (getenv "DISPLAY" (selected-frame)))
        process-environment)))
     (if (getenv "XAUTHORITY" (selected-frame))
     (setq process-environment
           (cons (concat "XAUTHORITY=" (getenv "XAUTHORITY" (selected-frame)))
             process-environment)))
     ,@body))
(defun x-terminal-copy (text)
  (with-temp-buffer
    (insert text)
    (with-x-environment
     (call-process-region (point-min) (point-max) "xsel" nil nil nil "-bi"))))
(defadvice x-select-text
  (before x-select-text-in-tty activate)
  "Use xsel to copy to the X clipboard when running in a terminal under X."
  (when (and (eq (framep (selected-frame)) t)
         (getenv "DISPLAY" (selected-frame)))
    (x-terminal-copy text)))
(provide '.emacs)
;;;
