{ pkgs, ... }:
let 
  myjdk = pkgs.jdk8.override {
    cacert = pkgs.runCommand "mycacert" {} ''
      mkdir -p $out/etc/ssl/certs
      cat ${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt \
        ${./my-company-root-certificate.crt} > $out/etc/ssl/certs/ca-bundle.crt
    '';
  };
in {
  programs.java = {
    enable = true;
    package = myjdk
  };
}
