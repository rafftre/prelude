;;; config-ui.el --- User interface configuration

;;; Hide menu bar:
;;(menu-bar-mode -1)

;;; Disable scroll bars and enable yascroll:
(scroll-bar-mode -1)
(global-yascroll-bar-mode 1)

;;; Color theme:
(setq prelude-theme 'dracula)

;;; Font & frame size:
(setq default-frame-alist '((font . "Hasklug Nerd Font Mono-11") (width . 120) (height . 34)))
