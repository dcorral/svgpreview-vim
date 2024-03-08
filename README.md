# SVGPreview for Vim/Neovim

SVGPreview is a straightforward Vim/Neovim plugin that allows you to preview SVG files directly from your editor. It detects the current operating system and uses the most suitable command to open SVG files in the default viewer.

## Installation

#### Using [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add the following to your `.vimrc` or `init.vim`:
    ```vim
    Plug 'dcorral/svgpreview-vim'
    ```
2. Reload your Vim/Neovim configuration or restart your editor.
3. Run `:PlugInstall`.

#### Using [Lazy](https://github.com/folke/lazy.nvim)

1. Add the following to your `init.lua` for Neovim:
    ```lua
    require("lazy").setup({
        {"dcorral/svgpreview-vim"}
    })
    ```
2. Reload Neovim or source your configuration file.
3. Run `:LazySync` to install the plugin.

#### Manual Installation

1. Clone this repository or download the latest release.
2. Copy the `plugin` and `autoload` directories to your Vim/Neovim configuration directory (`~/.vim` for Vim, `~/.config/nvim` for Neovim).

## Usage

Open an SVG file in Vim/Neovim and run the command `:SVGPreview`. The plugin will attempt to open the SVG file in your default system viewer.

## Keyboard Shortcuts

You can set custom keyboard shortcuts to quickly trigger the SVG preview. Here are examples of how to set these in your `.vimrc` or `init.vim`:

```vim
nnoremap <silent> <Leader>sp :SVGPreview<CR>
```

## Customization

Currently, SVGPreview does not require any configuration. It automatically detects your operating system and uses the most suitable command available to open SVG files.

## License

SVGPreview is released under the MIT License. See the LICENSE file for more details.

