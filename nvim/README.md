# Configuración de [Neo-VIM](https://github.com/neovim/neovim/wiki/Installing-Neovim)


## Config

> Enlaces para linux

*Previamente deberían crarse los enlaces de [vim](../vim)*

```bash
mkdir -p ~/.config/nvim;
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim;
```

## Plug
Instalar [plug](https://github.com/junegunn/vim-plug)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Una vez creados los enlaces hay que ejecutar dentro de neovim.
```
:PlugInstall
```
