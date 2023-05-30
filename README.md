# Nix Templates

## How To Use

Install `nix`:

https://github.com/DeterminateSystems/nix-installer

Install `home-manager`:

https://github.com/nix-community/home-manager

Install `nix-direnv` through `home-manager`:

https://github.com/nix-community/nix-direnv#via-home-manager

In local `.env` or `.envrc` file, add the following:

```sh
use flake "github:bodazhao/nix-templates?dir=node18"
```