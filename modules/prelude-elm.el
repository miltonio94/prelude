;;; prelude-ts.el --- Emacs Prelude: Typescript programming support.
;;
;; Copyright © 2011-2023 Milton
;;
;; Author: Milton J. De Paula <Miltonic94@gmail.com>

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for Elm development.

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
(prelude-require-packages '(elm-mode))

(add-to-list 'auto-mode-alist '("\\.elm\\'" . elm-mode))

(with-eval-after-load 'elm-mode
  (add-hook 'elm-mode-hook 'lsp)
  (add-hook 'elm-mode-hook #'tree-sitter-mode)
  (add-hook 'elm-mode-hook #'tree-sitter-hl-mode)
  (add-hook 'elm-mode-hook 'elm-format-on-save-mode)

  (defun prelude-elm-mode-defaults ()
    (interactive)
    (flycheck-mode +1)
    (elm-tags-on-save t)
    (elm-sort-imports-on-save nil)
    (yas-minor-mode)
    (subword-mode +1))

  (setq prelude-elm-mode-hook (lambda ()
                                (run-hooks 'prelude-elm-mode-hook))))

(provide 'prelude-elm)
