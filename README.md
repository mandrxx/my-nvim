# MY-NVIM
Minimalistic configuration for Neovim.
**[My configuration of Unix is here.](https://github.com/vad56/config)**

### Get latest NeoVim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/.local/bin && mv nvim.appimage ~/.local/bin
ln ~/.local/bin/nvim.appimage ~/.local/bin/nvim
# add it to your fish config: set PATH $HOME/.local/bin $PATH
```

### Get this configuration
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/vad56/my-nvim.git ~/.config/nvim
nvim +PlugInstall! +qall!
```

### References
- [Tips for Vim-plug](https://github.com/junegunn/vim-plug/wiki/tips)
