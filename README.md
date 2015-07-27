# vim-vlb
CSSCで使われているVLBのためのvimプラグインです。

Installation
------------

###Neobundle
```vim
Neobundle 'innocentyknr/vim-vlb'
```

Configuration
-------------
[neosnippet.vim](https://github.com/Shougo/neosnippet.vim) が導入してある場合以下のコードを~/.vimrcに足していただくとスニペットが使えるようになります。
```vim
autocmd FileType vlb let g:neosnippet#snippets_directory='~/.vim/bundle/vim-vlb/snippet'
```


