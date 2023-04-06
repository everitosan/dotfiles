# Configuración de [Neo-VIM](https://github.com/neovim/neovim/wiki/Installing-Neovim)

Basada en este [tutorial](https://www.youtube.com/watch?v=w7i4amO_zaE)

## Config

> Enlaces para linux

```bash
mkdir -p ~/.config/;
ln -s ~/.dotfiles/nvim ~/.config/nvim;
```

## Packer
Instalar [packer](https://github.com/wbthomason/packer.nvim)

**Linux**
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

**Powershell**
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Una vez creados los enlaces hay que ejecutar dentro de neovim.
```
:PackerSync
```
