(hall-description
  (name "pinentry-rofi")
  (prefix "")
  (version "2.0.2")
  (author "Fredrik Salomonsson")
  (copyright (2020))
  (synopsis "Rofi frontend to pinentry")
  (description
    "Simple pinentry gui using rofi, it is written in GNU guile.")
  (home-page
    "https://github.com/plattfot/pinentry-rofi/")
  (license gpl3+)
  (dependencies `(("rofi" ,rofi)))
  (files (libraries ((scheme-file "pinentry-rofi")))
         (tests ((directory
                   "tests"
                   ((scheme-file "pinentry-rofi")))))
         (programs
           ((directory "scripts" ((in-file "pinentry-rofi")))))
         (documentation
           ((org-file "README")
            (symlink "README" "README.org")
            (text-file "AUTHORS")
            (text-file "NEWS")
            (text-file "HACKING")
            (text-file "COPYING")
            (directory "doc" ((texi-file "pinentry-rofi")))
            (text-file "ChangeLog")))
         (infrastructure
           ((scheme-file "guix") (scheme-file "hall")))))
