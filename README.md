# The Essential vimrc for Developers
This Vim configuration contains a basic setup for developers + some useful plugins, remaps and colorschemes that make Vim a lot better.
## How to install
Use the following command:
```
git clone https://github.com/TMKE/pro-vim.git ~/.vim
mv ~/.vim/.vimrc ~/
```
In order for plugins to work, you must type the following command inside Vim:
```
:PlugInstall
```
## Screenshots
<img src="Screenshot_1.png">
<img src="Screenshot_2.png">
<img src="Screenshot_3.png">

## Included Plugins
Read the documentation of these plugins to understand and use them.
- [limelight.vim](https://github.com/junegunn/limelight.vim): Focus on current paragraphe when writing
- [coc.nvim](https://github.com/neoclide/coc.nvim): Plugin for autocompletion
- [vim-airline](https://github.com/vim-airline/vim-airline): Configurable tabline/statusline for Vim
- [indentLine](https://github.com/Yggdroot/indentLine): A vim plugin to display the indention levels with thin vertical lines
- [nerdtree](https://github.com/preservim/nerdtree): A tree explorer plugin for vim
- [vim-visula-multi](https://github.com/mg979/vim-visual-multi): Multiple cursors plugin for vim/neovim
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter): A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks
- [vim-commentary](https://github.com/tpope/vim-commentary): A plugin to comment stuff out
- [vim-surround](https://github.com/tpope/vim-surround): Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [vim-fugitive](https://github.com/tpope/vim-fugitive): Plugin for Git (call Git commands)
- [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder
- [fzf.vim](https://github.com/junegunn/fzf.vim): A a bundle of fzf-based commands and mappings
- [ultisnips](https://github.com/SirVer/ultisnips): The ultimate solution for snippets in Vim
### Plugins for syntax highlighting
- [yats.vim](https://github.com/HerringtonDarkholme/yats.vim): TypeScript syntax highlighting in Vim
- [vim-javascript](https://github.com/pangloss/vim-javascript): Improved Javascript indentation and syntax support in Vim
- [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty): JSX and TSX syntax pretty highlighting
- [vim-styled-components](https://github.com/styled-components/vim-styled-components)
- [vim-json](https://github.com/elzr/vim-json): JSON syntax highlighting
- [vim-graphql](https://github.com/jparise/vim-graphql): A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation
## Included Colorschemes
- [vim-monokai](https://github.com/sickill/vim-monokai)
- [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty)
- [molokai](https://github.com/tomasr/molokai)
- [molokayo](https://github.com/fmoralesc/molokayo)
- [vim-open-color](https://github.com/yous/vim-open-color)
- [peaksea](https://github.com/vim-scripts/peaksea)
- [vim-kalisi](https://github.com/freeo/vim-kalisi)
- [spacecamp](https://github.com/jaredgorski/spacecamp)
- [vim-sunbather](https://github.com/nikolvs/vim-sunbather)
- [tender.vim](https://github.com/jacoborus/tender.vim) (default)
- [sonokai](https://github.com/sainnhe/sonokai)
- [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [meta5](https://github.com/christophermca/meta5)
- [vim-github-colorscheme](https://github.com/endel/vim-github-colorscheme)
- [vim-deep-space](https://github.com/tyrannicaltoucan/vim-deep-space)
- [vim-theme-papaya](https://github.com/HenryNewcomer/vim-theme-papaya)
## Key Mappings
### Normal Mode
- The leader key (`<leader>`) is remaped to `,` instead of `\`.
- Use `F5` to toggle NERDTree
- Use backspace to delete characters behind the cursor
- Use `Tab` to indent and `Tab`+`Shift` to unindent
- Use `Y` to yank from the current position until the end of the line (equivalent of `y$`)
- `<leader>` (i.e. `,`) then `tn` to open a new tab (instead of `:tabnew`)
- `<leader>`, `t` then `<leader` again to move to the next tab (instead of `:tabnext`)
- `<leader>` then `tm` to move a tab (instead of `:tabmove`)
- `<leader>` then `tc` to close a tab (instead of `:tabclose`)
- `<leader>` then `to` to close all tab pages except the current one (instead of `:tabonly`)
- `<leader>` then `K`/`J` to move current line up/down
### Visual Mode
- Use `K`/`J` to move the current line (or multiple lines selected) up/down
### Insert Mode
- Use `Ctrl`+`k`/`j` to move current line up/down