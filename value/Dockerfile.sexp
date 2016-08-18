((From (Image_tag (ocaml/opam ubuntu-16.04_ocaml-4.02.3)))
 (Run
  (Shell "git clone git://github.com/mirage/ocaml-cohttp /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/440/head:cibranch"))
 (Run (Shell "git checkout cb96f69178b7d946ae2efa6109768159f01b9828"))
 (Run (Shell "opam pin add -n cohttp /home/opam/src"))
 (Run (Shell "opam depext -uy cohttp"))
 (Run (Shell "opam install -j 2 -vy cohttp")))