((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Run
  (Shell "git clone git://github.com/mirage/ocaml-cohttp /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/488/head:cibranch"))
 (Run (Shell "git checkout d1027b86e13a4f3916486343cd02444c3038195e"))
 (Run (Shell "opam pin add -n cohttp /home/opam/src"))
 (Run (Shell "opam depext -uy cohttp"))
 (Run (Shell "opam install -j 2 -vy cohttp")))