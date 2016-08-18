((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/526/head:cibranch"))
 (Run (Shell "git checkout 581364d405e47db9eb45bef07f4f74487de40400"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))