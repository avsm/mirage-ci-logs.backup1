((From (Image_tag (ocaml/opam opensuse-42.1_ocaml-4.03.0)))
 (Run
  (Shell "git clone git://github.com/mirage/ocaml-cohttp /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/341/head:cibranch"))
 (Run (Shell "git checkout 62c8606404665c0e0b00937d9fa6cffd3045c185"))
 (Run (Shell "opam pin add -n cohttp /home/opam/src"))
 (Run (Shell "opam depext -uy cohttp"))
 (Run (Shell "opam install -j 2 -vy cohttp")))