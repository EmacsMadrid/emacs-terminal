(defun pipe (filename buffer-name)
  "Open FILENAME and insert its content to buffer BUFFER-NAME.

If the buffer BUFFER-NAME does not exist, it's created.
If narrowing is taking place in buffer BUFFER-NAME only the narrowed region is
replaced by the piped content."
  (find-file filename)
  (let ((stdin (get-buffer-create buffer-name))
        (tmp (current-buffer)))
    (switch-to-buffer stdin)
    (delete-region (point-min) (point-max))
    (switch-to-buffer tmp)
    (append-to-buffer stdin (point-min) (point-max))
    (kill-buffer)))
