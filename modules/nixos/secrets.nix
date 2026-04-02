{ config, pkgs, sops-nix, secrets, ... }:

let user = "dustin"; in
{
  sops = {
    defaultSopsFile = "${secrets}/secrets.yaml";
    defaultSopsFormat = "yaml";

    gnupg.home = "/home/${user}/.gnupg";
    gnupg.sshKeyPaths = [];

    secrets = {
      # "syncthing-cert" = {
      #   path = "/home/${user}/.config/syncthing/cert.pem";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "users";
      # };

      # "syncthing-key" = {
      #   path = "/home/${user}/.config/syncthing/key.pem";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "users";
      # };

      # "github-ssh-key" = {
      #   path = "/home/${user}/.ssh/id_github";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "wheel";
      # };

      # "github-signing-key" = {
      #   path = "/home/${user}/.ssh/pgp_github.key";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "wheel";
      # };
    };
  };
}
