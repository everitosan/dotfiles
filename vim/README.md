# Configuración de VIM


## Config

> Enlaces para linux

```bash
$ ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc;
$ ln -s ~/.dotfiles/vim/.vim ~/.vim;
```

## Plug
Instalar [plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


Una vez creados los enlaces hay que ejecutar dentro de neovim.
```
:PlugInstall
```
