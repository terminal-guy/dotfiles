;; ██╗   ██╗ █████╗
;; ██║   ██║██╔══██╗ Vishal Adhithya (VA)
;; ██║   ██║███████║ https://github.com/terminal-guy/ (GITHUB  )
;; ╚██╗ ██╔╝██╔══██║
;;  ╚████╔╝ ██║  ██║
;;   ╚═══╝  ╚═╝  ╚═╝


;;  ███╗   ███╗██╗   ██╗██╗  ██╗███████╗
;;  ████╗ ████║██║   ██║██║  ██║██╔════╝
;;  ██╔████╔██║██║   ██║███████║█████╗
;;  ██║╚██╔╝██║██║   ██║╚════██║██╔══╝
;;  ██║ ╚═╝ ██║╚██████╔╝     ██║███████╗
;;  ╚═╝     ╚═╝ ╚═════╝      ╚═╝╚══════╝


(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(setq user-full-name "Vishal Adhithya"
      user-mail-address "vishaladhithya19@gmail.com"
      ;; I have my mbsyncrc in a different folder on my system, to keep it separate from the
      ;; mbsyncrc available publicly in my dotfiles. You MUST edit the following line.
      ;; Be sure that the following command is: "mbsync -c ~/.config/mu4e/mbsyncrc -a"
      mu4e-get-mail-command "mbsync -c ~/.config/mu4e/mbsyncrc -a"
      mu4e-update-interval  300
      mu4e-main-buffer-hide-personal-addresses t
      message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.1and1.com" 587 nil nil)))



;; ██╗   ██╗██╗    ████████╗ ██████╗  ██████╗  ██████╗ ██╗     ███████╗███████╗
;; ██║   ██║██║    ╚══██╔══╝██╔═══██╗██╔════╝ ██╔════╝ ██║     ██╔════╝██╔════╝
;; ██║   ██║██║       ██║   ██║   ██║██║  ███╗██║  ███╗██║     █████╗  ███████╗
;; ██║   ██║██║       ██║   ██║   ██║██║   ██║██║   ██║██║     ██╔══╝  ╚════██║
;; ╚██████╔╝██║       ██║   ╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████╗███████║
;;  ╚═════╝ ╚═╝       ╚═╝    ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝

(setq doom-font (font-spec :family "Mononoki Nerd Font" :size 15)
      doom-variable-pitch-font (font-spec :family "JetBrains mono Medium" :size 15)
      doom-big-font (font-spec :family "Mononoki Nerd Font" :size 24))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))



(setq doom-modeline-modal-icon nil)
(setq evil-echo-state nil)
(setq evil-normal-state-tag   (propertize "[Normal]" 'face '((:background "green" :foreground "black")))
      evil-emacs-state-tag    (propertize "[Emacs]" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag   (propertize "[Insert]" 'face '((:background "red") :foreground "white"))
      evil-motion-state-tag   (propertize "[Motion]" 'face '((:background "blue") :foreground "white"))
      evil-visual-state-tag   (propertize "[Visual]" 'face '((:background "grey80" :foreground "black")))
      evil-operator-state-tag (propertize "[Operator]" 'face '((:background "purple"))))


(require 'unicode-fonts)
(unicode-fonts-setup)

(setq doom-theme 'doom-one)

(setq fancy-splash-image "~/Pictures/doom-logo.png")



;; ██████╗ ██████╗  ██████╗     ███╗   ███╗ ██████╗ ██████╗ ███████╗
;; ██╔═══██╗██╔══██╗██╔════╝     ████╗ ████║██╔═══██╗██╔══██╗██╔════╝
;; ██║   ██║██████╔╝██║  ███╗    ██╔████╔██║██║   ██║██║  ██║█████╗
;; ██║   ██║██╔══██╗██║   ██║    ██║╚██╔╝██║██║   ██║██║  ██║██╔══╝
;; ╚██████╔╝██║  ██║╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████╗

(after! org
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-directory "~/Org/*"
      org-agenda-files '("~/Org/agenda.org")
      org-ellipsis " ▼ "

      org-hide-emphasis-markers t
)
 (setq org-log-done 'time)
)

(setq display-line-numbers-type t)


;; ██╗     ███████╗██████╗
;; ██║     ██╔════╝██╔══██╗
;; ██║     ███████╗██████╔╝
;; ██║     ╚════██║██╔═══╝
;; ███████╗███████║██║
;; ╚══════╝╚══════╝╚═╝


(use-package lsp-mode :ensure t)
(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp))

;; Optional packages
(use-package projectile :ensure t) ;; project management
(use-package yasnippet
  :ensure t
  :config (yas-global-mode)) ;; snipets
(use-package lsp-ui :ensure t) ;; UI for LSP
(use-package company :ensure t) ;; Auto-complete

;; Optional Flutter packages
(use-package hover :ensure t) ;; run app from desktop without emulator



;; ███████╗██╗  ██╗██╗    ██╗███╗   ███╗
;; ██╔════╝╚██╗██╔╝██║    ██║████╗ ████║
;; █████╗   ╚███╔╝ ██║ █╗ ██║██╔████╔██║
;; ██╔══╝   ██╔██╗ ██║███╗██║██║╚██╔╝██║
;; ███████╗██╔╝ ██╗╚███╔███╔╝██║ ╚═╝ ██║
;; ╚══════╝╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝     ╚═╝

(require 'exwm)
(require 'exwm-config)
(exwm-config-default)
(require 'exwm-randr)
(exwm-randr-enable)
(require 'exwm-systemtray)
(exwm-systemtray-enable)



(setq exwm-workspace-number 10

     exwm-input-prefix-keys '(?\M-x
                              ?\M-:)
     exwm-input-simulation-keys '(([?\s-f] . [?\C-f])([?\s-w] . [?\C-w]))

 )

(exwm-input-set-key (kbd "s-R") #'exwm-restart)
(exwm-input-set-key (kbd "s-r") #'exwm-reset)
(exwm-input-set-key (kbd "s-j") #'windmove-left)
(exwm-input-set-key (kbd "s-l") #'windmove-down)
(exwm-input-set-key (kbd "s-h") #'windmove-up)
(exwm-input-set-key (kbd "s-k") #'windmove-right)
(exwm-input-set-key (kbd "s-C") #'kill-this-buffer)
(exwm-input-set-key (kbd "s-p") #'dmenu)
(exwm-input-set-key (kbd "s-b") #'+ivy/switch-buffer)
(exwm-input-set-key (kbd "s-f") #'find-file)
(exwm-input-set-key (kbd "s-Q") #'kill-emacs)
(exwm-input-set-key (kbd "s-M") #'exwm-layout-toggle-fullscreen)
(exwm-input-set-key (kbd "s-F") #'exwm-floating-toggle-floating)
(exwm-input-set-key (kbd "s-e") #'eshell)
(exwm-input-set-key (kbd "s-t") #'term)
(exwm-input-set-key (kbd "s-J") #'+evil/window-move-left)
(exwm-input-set-key (kbd "s-K") #'+evil/window-move-right)
(exwm-input-set-key (kbd "s-H") #'+evil/window-move-up)
(exwm-input-set-key (kbd "s-L") #'+evil/window-move-down)
(exwm-input-set-key (kbd "s-B") #'counsel-ibuffer)

(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
(add-to-list 'default-frame-alist '(alpha . (95 . 95)))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))


(defun efs/run-in-background (command)
  (let ((command-parts (split-string command "[ ]+")))
    (apply #'call-process `(,(car command-parts) nil 0 nil ,@(cdr command-parts)))))


(defun efs/set-wallpaper ()
  (interactive)
  ;; NOTE: You will need to update this to a valid background path!
  (start-process-shell-command
      "feh" nil  "feh --bg-scale /home/va/Wallpapers/spiderman_miles.jpg"))


  (efs/run-in-background "dunst")
  (efs/run-in-background "picom --experimental-backends")
  (efs/run-in-background "lxsession")



;; Set the wallpaper after changing the resolution
(efs/set-wallpaper)
