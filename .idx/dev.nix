# To learn more about how to use IDX to build dev environments, see https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    pkgs.nodejs_20
    pkgs.python3
    pkgs.openjdk17
    pkgs.git
    pkgs.curl
    pkgs.gnupg
  ];
  idx = {
    extensions = [];
    workspace = {
      onCreate = {
        chmod-script = "chmod +x setup.sh";
      };
      onStart = {
        run-menu = "./setup.sh";
      };
    };
  };
}
