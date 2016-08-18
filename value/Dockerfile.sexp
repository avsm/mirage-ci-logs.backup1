((From (Image_tag (ocaml/opam opensuse-42.1_ocaml-4.03.0)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/558/head:cibranch"))
 (Run (Shell "git checkout 9f190fe4dd30c9aa6a09eb60f1cb3ede752806fa"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))