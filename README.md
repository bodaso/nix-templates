# Nix Templates

## How To Use

Install `nix`:

https://github.com/DeterminateSystems/nix-installer

Install `home-manager`:

https://github.com/nix-community/home-manager

Install `nix-direnv` through `home-manager`:

https://github.com/nix-community/nix-direnv#via-home-manager

In local `.envrc` file, add the following:

```sh
use flake "github:bodazhao/nix-templates?dir=node18"
```

For some flake, we need to export variable and add `--impure` flag in `.envrc` to run:

```sh
export NIXPKGS_ALLOW_INSECURE=1;
use flake --impure "github:bodazhao/nix-templates?dir=node16"
```
