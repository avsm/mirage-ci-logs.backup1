((From (Image_tag (ocaml/opam debian-testing_ocaml-4.03.0)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/573/head:cibranch"))
 (Run (Shell "git checkout f918e6e50b18d2f2cb1ca8d6cebbd18c059cce5a"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))