((From (Image_tag (ocaml/opam fedora-24_ocaml-4.03.0)))
 (Run
  (Shell "git clone git://github.com/mirage/ocaml-cohttp /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/477/head:cibranch"))
 (Run (Shell "git checkout 6afdb07d9613f907079a8add9051f16a672295a7"))
 (Run (Shell "opam pin add -n cohttp /home/opam/src"))
 (Run (Shell "opam depext -uy cohttp"))
 (Run (Shell "opam install -j 2 -vy cohttp")))