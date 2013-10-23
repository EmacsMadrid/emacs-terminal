(defun pipe (filename buffer-name)
  "Open FILENAME and append its content to buffer BUFFER-NAME.

If a buffer with that name does not exist, it's created."
  (find-file filename)
  (append-to-buffer (get-buffer-create buffer-name) (point-min) (point-max))
  (kill-buffer)
  (switch-to-buffer buffer-name))
