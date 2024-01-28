# init.lua
My neovim configuration

### Pre-Requisites

* `$ brew install ripgrep`

### Setup

* First install [Packer](https://github.com/wbthomason/packer.nvim) with:

    ```shell
    $ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

* Add `alias vim=nvim` to your `~/.zshrc`
* `cd` into this repo and run `$ bash dev`
* Run `$ vim lua/robert/packer.lua`
* Then in neovim run `:so`
* then `:PackerSync` to install all packages

Now you're configuration should be fully implemented
