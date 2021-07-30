# my2
This is the best lsp config for nvim. It uses [vim plug](https://github.com/junegunn/vim-plug) so install it.

```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

For LSP it uses [vim-lsp](https://github.com/prabirshrestha/vim-lsp)

For autocompletion prompts [asyncomplete](https://github.com/prabirshrestha/asyncomplete.vim) is used, with [asyncomplete-lsp](https://github.com/prabirshrestha/asyncomplete-lsp.vim).

For better usage have a look at lsp server [install scripts](https://github.com/mattn/vim-lsp-settings/tree/master/installer) at [vim-lsp-settings](https://github.com/mattn/vim-lsp-settings).

Else install lsp server `:LspInstallServer`.

I Tested:
* cpp
Works perfect when `:LspInstallServer` and used. it uses cland, it needs to be installed and accesible from `clangd` command.

ClangD is included in clang-tools package often installed along clang. No extra installation required.
