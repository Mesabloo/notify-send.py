{ pkgs ? import <nixpkgs> {}
, stdenv ? pkgs.stdenv }:

pkgs.python38Packages.buildPythonPackage rec {
  name = "notify-send-py";
  version = "1.2.3";

  src = pkgs.fetchFromGitHub {
    owner = "mesabloo";
    repo = "notify-send.py";
    rev = "master"; # No version tag unfortunately
    sha256 = "0azrcfp2ivrkdjalf9pffi8gwzwbvmii2abll7ck7hznz8vqwawr";
  };

  propagatedBuildInputs = with pkgs.python38Packages; [
    dbus-python
    notify2
    pygobject3
  ];

  meta = {
    homepage = "https://github.com/phuhl/notify-send.py";
    description = "A simple script used as a replacement to the one provided to `libnotify`.";
    license = stdenv.lib.licenses.mit;
    maintainers = with pkgs.maintainers; [ phuhl mesabloo ];
  };
}

