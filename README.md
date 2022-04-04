# MY-NVIM
Minimalistic configuration for Neovim.
**[My configuration of Unix is here.](https://github.com/vad56/config)**

### Get latest NeoVim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin
sudo ln -s /usr/local/bin/nvim.appimage /usr/local/bin/nvim
```

### Get this configuration
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/vad56/my-nvim.git ~/.config/nvim
nvim +PlugInstall! +qall!
```

### References
- [Tips for Vim-plug](https://github.com/junegunn/vim-plug/wiki/tips)
