((From (Image_tag (ocaml/opam debian-testing_ocaml-4.03.0)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/550/head:cibranch"))
 (Run (Shell "git checkout 82c1992b583720db9b34942bc1980d8733d01930"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))