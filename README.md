# My vim config

Remove current ```.vim``` directory
```
rm -rf .vim
```

Pull repo down
```
git clone https://github.com/akiraandy/.vim.git
```

Install [dein](https://github.com/Shougo/dein.vim)
```bash
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein
```

Nav to dir
```
cd ~/.vim
```

Update submodules
```
git submodule foreach git pull origin master
```

Create symlink
```
ln -sf ~/.vim/.vimrc ~/.vimrc
```

Open vim and install dein and dependencies
```bash
:call dein#install()
```
