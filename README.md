# init.lua
My neovim configuration

### Pre-Requisites

* `$ brew install ripgrep`
* `$ brew install black`
* Install Node.js (for LSP servers): `$ brew install node`

### Environment Variables

* For support with DBT you will need to set the following environment variables:

    ```shell
    export PATH_TO_DBT=<your_path_to_dbt>
    ```

### Setup

* First install [Packer](https://github.com/wbthomason/packer.nvim) with:

    ```shell
    $ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

* Add `alias vim=nvim` to your `~/.zshrc`
* Clone this repo to `~/.config/nvim` or symlink it there
* Open Neovim - it should automatically load packer configuration
* Run `:PackerSync` to install all packages
* Run `:Mason` and install LSP servers:
  - `lua_ls` (Lua Language Server)
  - `jsonls` (JSON Language Server)
  - `pylsp` (Python LSP Server)
  - `eslint` (ESLint Language Server)
  - Any other LSP servers you need
* Restart Neovim

Now your configuration should be fully implemented
