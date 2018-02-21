let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

let settings = [
  \'NERDtree',
  \'ag',
  \'ctrlp',
  \'lightline',
  \'vim-fugitive',
  \'vim-tmux-navigator',
  \'sneak',
  \'solarized',
  \'syntastic',
  \'yadr-appearance',
  \'yadr-keymap',
  \'z_ast',
  \]

for setting in settings
  exe 'source' vimsettings . '/' . setting . '.vim'
endfor

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  " exe 'source' fpath
endfor
