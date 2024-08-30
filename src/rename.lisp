(let ((dirpath "/Users/jb/tmp/shell-demo")
      (glob-pattern (make-pathname 
                     :directory dirpath 
                     :name "*" 
                     :type "html")))
  (loop for f in (directory glob-pattern) 
        do (let ((nm (pathname-name f)) 
                 (ext (pathname-type f)) 
                 (newf (concatenate 'string nm "-suffix" "." ext)) 
                 (newpath (make-pathname :directory dirpath))) 
             (print newf))))
