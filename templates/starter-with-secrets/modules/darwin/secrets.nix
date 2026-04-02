{ config, pkgs, sops-nix, secrets, ... }:

let user = "%USER%"; in
{
  sops = {
    defaultSopsFile = "${secrets}/secrets.yaml";
    defaultSopsFormat = "yaml";

    gnupg.home = "/Users/${user}/.gnupg";
    gnupg.sshKeyPaths = [];

    # Your secrets go here
    #
    # Example:

    # secrets = {
    #   "github-ssh-key" = {
    #     path = "/Users/${user}/.ssh/id_github";
    #     mode = "0600";
    #     owner = "${user}";
    #     group = "staff";
    #   };
    #
    #   "github-signing-key" = {
    #     path = "/Users/${user}/.ssh/pgp_github.key";
    #     mode = "0600";
    #     owner = "${user}";
    #   };
    # };
  };
}
