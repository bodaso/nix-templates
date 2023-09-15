# Nix Templates

## How To Use

Install `nix`:

https://github.com/DeterminateSystems/nix-installer

Install `home-manager`:

https://github.com/nix-community/home-manager

To start an ad hoc shell with the desired Node version:

```sh
nix develop "github:bodaso/nix-templates?dir=node18"
```

For some flakes, we need to add extra flags:

```sh
export NIXPKGS_ALLOW_INSECURE=1; nix develop --impure "github:bodaso/nix-templates?dir=node16"
```

## Integration with `direnv`

Install `nix-direnv` through `home-manager`:

https://github.com/nix-community/nix-direnv#via-home-manager

In local `.envrc` file, add the following:

```sh
use flake "github:bodaso/nix-templates?dir=node18"
```

For some flake, we need to export variable and add `--impure` flag in `.envrc` to run:

```sh
export NIXPKGS_ALLOW_INSECURE=1;
use flake --impure "github:bodaso/nix-templates?dir=node16"
```

### How can `direnv` read from `.env` file?

We can enable the [`load_dotenv` option](https://direnv.net/man/direnv.toml.1.html#codeloaddotenvcode) from `direnv` to make it read from `.env` file instead of `.envrc`.

Add the `load_dotenv` option in `home-manager`:

```nix
direnv = {
  enable = true;
  nix-direnv.enable = true;
  config = {
    global = {
      load_dotenv = true;
    };
  };
};
```

Run `home-manager switch`
