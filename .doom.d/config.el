;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


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
(exwm-input-set-key (kbd "s-b") #'list-buffers)
(exwm-input-set-key (kbd "s-f") #'find-file)
(exwm-input-set-key (kbd "s-Q") #'kill-emacs)
(exwm-input-set-key (kbd "s-M") #'exwm-layout-toggle-fullscreen)
(exwm-input-set-key (kbd "s-F") #'exwm-floating-toggle-floating)
(exwm-input-set-key (kbd "s-e") #'eshell)

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

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Vishal Adhithya"
      user-mail-address "vishaladhithya19@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
(setq doom-font (font-spec :family "Mononoki Nerd Font" :size 15)
      doom-variable-pitch-font (font-spec :family "JetBrains mono Medium" :size 15)
      doom-big-font (font-spec :family "Mononoki Nerd Font" :size 24))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(after! org
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-directory "~/Org/*"
      org-agenda-files '("~/Org/agenda.org")
      org-ellipsis " ▼ "

      org-hide-emphasis-markers t
)
 (setq org-log-done 'time)
)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.




(setq doom-modeline-modal-icon nil)
(setq evil-echo-state nil)
(setq evil-normal-state-tag   (propertize "[Normal]" 'face '((:background "green" :foreground "black")))
      evil-emacs-state-tag    (propertize "[Emacs]" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag   (propertize "[Insert]" 'face '((:background "red") :foreground "white"))
      evil-motion-state-tag   (propertize "[Motion]" 'face '((:background "blue") :foreground "white"))
      evil-visual-state-tag   (propertize "[Visual]" 'face '((:background "grey80" :foreground "black")))
      evil-operator-state-tag (propertize "[Operator]" 'face '((:background "purple"))))

