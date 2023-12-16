# neovim_config

This is a configuration file for neovim with LSP,completion, terminal,File Explorer. Codeium is used as copilot and treesitter.

## color_scheme
I personally use gruvbox as my color scheme.

## treesitter
I use treesitter for syntax highlighting.

## lsp
I use lsp-zero for LSP
You can insall more language LSP with ":mason" in vim command

## Installation

First clone this repository and install dependencies
```
git clone https://github.com/vvaibhavv11/neovim_config.git
```
after that install the plugins and open neovim 

For Linux(may require sudo):
```
chmod u+x ./neovim_config/installation/linux_intall
./neovim_config/installation/linux_intall
```

For Windows:
```
cd .\neovim_config\installation
windows_intall.bat
```

## Quick start
Here a table that describes the keybindings for neovim
leader key is space

# commmon operations in neovim

| command | description |
|---------|-------------|
| :w | save file |
| :wq | save and quit |
| :q | quit |
| :q! | quit without save |
| :wq! | save and quit without save |
| :set autochdir | auto change directory |


# keybindings
| keybinding | description |
|------------|-------------|
| "leader" ff | open telescope |
| "leader"l | in visual mode copy to system clipboard |
| "leader"fm | toggle file explorer |
| "c-e" | open harpoon |
| "leader"a | add a file to harpoon |
| "c-a" | first file in harpoon |
| "c-s" | second file in harpoon |
| "c-d" | third file in harpoon |
| "c-f" | fourth file in harpoon |
| "c-\" | toggle terminal |
| s | jump to anyword in a buffer by flash plugin |

