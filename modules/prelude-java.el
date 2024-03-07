;;; prelude-dart.el --- Emacs Prelude: Dart programming configuration.
;;
;; Copyright © 2011-2023 Bozhidar Batsov
;;
;; Author: Raffaele Tretola <rafftre@hey.com>
;; URL: https://github.com/bbatsov/prelude

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Basic configuration for programming in Dart.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'prelude-programming)
(prelude-require-packages '(lsp-java))

(defun prelude-java-mode-defaults ()
  (flycheck-mode)
  (company-mode)
  (lsp))

(setq prelude-java-mode-hook 'prelude-java-mode-defaults)

(add-hook 'java-mode-hook (lambda ()
                            (run-hooks 'prelude-java-mode-hook)))

(provide 'prelude-java)

;;; prelude-java.el ends here
