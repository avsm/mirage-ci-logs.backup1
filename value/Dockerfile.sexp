((From (Image_tag (ocaml/opam opensuse-42.1_ocaml-4.03.0)))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/548/head:cibranch"))
 (Run (Shell "git checkout 8a9ccd186efcb96f69c3c8807e5f12b8d87872cf"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))