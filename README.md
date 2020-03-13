# My vim config

Remove current ```.vim``` directory
```
rm -rf .vim
```

Pull repo down
```
git clone --recursive https://github.com/akiraandy/.vim.git
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
