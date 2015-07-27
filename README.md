# vim-vlb
***
CSSCで使われているVLBのためのvimプラグインです。
syntax-highlight,indent,snippet
Installation
------------

###Neobundle
```vim
Neobundle 'innocentyknr/vim-vlb'
```

Configuration
-------------
[neosnippet.vim](https://github.com/Shougo/neosnippet.vim)が導入してある場合以下のコードを~/.vimrcに足していただくとスニペットが使えるようになります。
```vim
autocmd FileType vlb let g:neosnippet#snippets_directory='~/Develop/vim-vlb-syntax/snippet'
```
