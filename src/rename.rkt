(let ([target-dir "/Users/jb/tmp/shell-demo"])
        (let ([files (directory-list target-dir)]) (map path->string files)))