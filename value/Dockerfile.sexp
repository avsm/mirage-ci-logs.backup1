((From (Image_tag (ocaml/opam debian-stable_ocaml-4.02.3)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/553/head:cibranch"))
 (Run (Shell "git checkout 7914ad7c6823ea7783a5fd85912294da3ed0124f"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))