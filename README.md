# vimrc
統一各個工作環境使用的.vimrc設定檔(使用vim-plugin)

# Install completer

[Reference(YouCompleteMe)](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)

```bash
apt install build-essential cmake vim python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

# Install flake8

Please install flake8 in your computer

macos
```
brew install flake8
```

Set config of flake8 in `~/.config/flake8`

```
[flake8]
max-line-height = 120
```

# Install Ultisnips

[Ultisnips](https://github.com/SirVer/ultisnips)
