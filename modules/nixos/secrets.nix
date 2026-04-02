{ config, pkgs, sops-nix, secrets, ... }:

let user = "dustin"; in
{
  sops = {
    defaultSopsFile = "${secrets}/secrets.yaml";
    defaultSopsFormat = "yaml";

    gnupg.home = "/home/${user}/.gnupg";
    gnupg.sshKeyPaths = [];

    secrets = {
      "syncthing-cert" = {
        symlink = true;
        path = "/home/${user}/.config/syncthing/cert.pem";
        file =  "${secrets}/felix-syncthing-cert.age";
        mode = "600";
        owner = "${user}";
        group = "users";
      };

      "syncthing-key" = {
        symlink = true;
        path = "/home/{$user}/.config/syncthing/key.pem";
        file =  "${secrets}/felix-syncthing-key.age";
        mode = "600";
        owner = "${user}";
        group = "users";
      };

      "github-ssh-key" = {
        symlink = false;
        path = "/home/${user}/.ssh/id_github";
        file =  "${secrets}/github-ssh-key.age";
        mode = "600";
        owner = "${user}";
        group = "wheel";
      };

      "github-signing-key" = {
        symlink = false;
        path = "/home/${user}/.ssh/pgp_github.key";
        file =  "${secrets}/github-signing-key.age";
        mode = "600";
        owner = "${user}";
        group = "wheel";
      };
    };
  };

}
