{ config, pkgs, sops-nix, secrets, ... }:

let user = "%USER%"; in
{
  sops = {
    defaultSopsFile = "${secrets}/secrets.yaml";
    defaultSopsFormat = "yaml";

    gnupg.home = "/home/${user}/.gnupg";
    gnupg.sshKeyPaths = [];

    # Your secrets go here
    #
    # Example:

    # secrets = {
    #   "github-ssh-key" = {
    #     path = "/home/${user}/.ssh/id_github";
    #     mode = "0600";
    #     owner = "${user}";
    #     group = "wheel";
    #   };
    # };
  };
}
