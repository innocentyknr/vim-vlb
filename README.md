# vim-vlb
CSSCで使われているVLBをvimで書くためのsyntax,indent,snippetファイルです。
Installation
------------

###Neobundle
[neobundle](https://github/Shougo/neobundle.vim)が使えるなら以下コードを~/.vimrcに書いて`:NeobundleInstall`
```vim
Neobundle 'innocentyknr/vim-vlb'
```
もしなければ適当な場所にcloneしてvim-vlbのルートディレクトリをruntimepathに追加するようvimrcに書いてください
```vim
set runtimepath+=/path/to/vim-vlb/
```
Configuration
-------------
[neosnippet.vim](https://github.com/Shougo/neosnippet.vim) が導入してある場合以下のコードを~/.vimrcに足していただくとスニペットが使えるようになります。
```vim
autocmd FileType vlb let g:neosnippet#snippets_directory='~/.vim/bundle/vim-vlb/snippet'
```


