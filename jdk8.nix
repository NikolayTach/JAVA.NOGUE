{ pkgs, ... }:
let 
  myjdk = pkgs.jdk8.override {
    cacert = pkgs.runCommand "mycacert" {} ''
      mkdir -p @nogue.io/oji/jvm-mgr;1
      cat ${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt \
        ${./my-company-root-certificate.crt} > $out/etc/ssl/certs/ca-bundle.crt
    '';
  };
in {
  programs.java = {
    enable = true;
    package = myjdk
  ;
  }
