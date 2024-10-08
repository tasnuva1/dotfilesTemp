;; 'r' key is bound to reply-to-sender instead of reply-to-all. Here's how to swap the reply to sender/all bindings in show mode:
 (define-key notmuch-show-mode-map "r" 'notmuch-show-reply)
 (define-key notmuch-show-mode-map "R" 'notmuch-show-reply-sender)

;; In search mode:
 (define-key notmuch-search-mode-map "r" 'notmuch-search-reply-to-thread)
 (define-key notmuch-search-mode-map "R" 'notmuch-search-reply-to-thread-sender)

;; And in tree mode:
 (define-key notmuch-tree-mode-map "r" (notmuch-tree-close-message-pane-and #'notmuch-show-reply))
 (define-key notmuch-tree-mode-map "R" (notmuch-tree-close-message-pane-and #'notmuch-show-reply-sender))
;; ------------------------------------
;; customising the variable notmuch-saved-searches. When starting notmuch, a list of saved searches and message counts is displayed.

(setq notmuch-saved-searches '((:name "inbox" :query "tag:inbox")
 (:name "unread" :query "tag:inbox AND tag:unread")
 (:name "notmuch" :query "tag:inbox AND to:twir@rust-lang.org")))
;; --------------------------
;; displaying the count for the saved-search:

(setq notmuch-saved-searches '((:name "inbox"
 :query "tag:inbox"
 :count-query "tag:inbox and tag:unread"
 :sort-order oldest-first)))

;; but the number displayed by the search will be the number of unread messages
;; ----------------------------------------------
;; saved search for my inbox, change color when there are thread with unread messages in the inbox.

 (defun color-inbox-if-unread () (interactive)
 (save-excursion
 (goto-char (point-min))
 (let ((cnt (car (process-lines "notmuch" "count" "tag:inbox and tag:unread"))))
 (when (> (string-to-number cnt) 0)
 (save-excursion
 (when (search-forward "inbox" (point-max) t)
 (let\* ((overlays (overlays-in (match-beginning 0) (match-end 0)))
 (overlay (car overlays)))
 (when overlay
 (overlay-put overlay 'face '((:inherit bold) (:foreground "green")))))))))))
 (add-hook 'notmuch-hello-refresh-hook 'color-inbox-if-unread)
