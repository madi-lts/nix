

let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    pkgs.llvmPackages_19.libcxxClang
    (pkgs.python312.withPackages (python-pkgs: [
      python-pkgs.ipython
      python-pkgs.ipykernel
      python-pkgs.jupyter-client
      python-pkgs.jupyter-core
      python-pkgs.jupyter-server
      python-pkgs.matplotlib
      python-pkgs.numpy
      python-pkgs.pandas
      python-pkgs.seaborn
      python-pkgs.scipy
    ]))
  ];
}
