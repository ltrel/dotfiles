;;; Customization File
(let ((customization-file (expand-file-name "custom.el" user-emacs-directory)))
  (setq custom-file customization-file)
  (when (file-exists-p customization-file)
    (load custom-file t)))

;;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Ensure all packages are installed
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package evil
  :config
  (evil-mode))

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'bitmap)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(use-package doom-themes
  :config
  (load-theme 'doom-gruvbox t))

;;; Misc
(savehist-mode)

;;; Editing
(electric-pair-mode)

;;; Appearance
(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 110)
(setq frame-resize-pixelwise t)
(tool-bar-mode 0)

(show-paren-mode)
(setq show-paren-delay 0)
(column-number-mode)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
