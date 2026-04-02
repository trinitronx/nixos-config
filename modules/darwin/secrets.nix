{ config, pkgs, sops-nix, secrets, ... }:

let user = "dustin"; in
{
  sops = {
    defaultSopsFile = "${secrets}/secrets.yaml";
    defaultSopsFormat = "yaml";

    gnupg.home = "/Users/${user}/.gnupg";
    gnupg.sshKeyPaths = [];

    secrets = {
      # "syncthing-cert" = {
      #   path = "/Users/${user}/Library/Application Support/Syncthing/cert.pem";
      #   mode = "0644";
      #   owner = "${user}";
      #   group = "staff";
      # };

      # "syncthing-key" = {
      #   path = "/Users/${user}/Library/Application Support/Syncthing/key.pem";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "staff";
      # };

      # "github-ssh-key" = {
      #   path = "/Users/${user}/.ssh/id_github";
      #   mode = "0600";
      #   owner = "${user}";
      #   group = "staff";
      # };

      # "github-signing-key" = {
      #   path = "/Users/${user}/.ssh/pgp_github.key";
      #   mode = "0600";
      #   owner = "${user}";
      # };
    };
  };
}
