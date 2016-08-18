((From (Image_tag (ocaml/opam debian-stable_ocaml-4.02.3)))
 (Run
  (Shell "git clone git://github.com/mirage/ocaml-cohttp /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/486/head:cibranch"))
 (Run (Shell "git checkout a3d5c6c44a3444315defc23c4dbf4392d3b70eee"))
 (Run (Shell "opam pin add -n cohttp /home/opam/src"))
 (Run (Shell "opam depext -uy cohttp"))
 (Run (Shell "opam install -j 2 -vy cohttp")))