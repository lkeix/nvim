# How to install nvim?

Mac OS

```bash
brew install nvim
```

## Setup Environment

```bash
git clone ${THIS_REPOSITORY} $HOME/.config

# dein setup
cd ~/.config/nvim
mkdir -p ~/.cache/dein
sh ./install.sh ~/.cache/dein

# start nvim
nvim

# if you don't install yarn
npm i -g yarn

# restart shell
exec $SHELL -l
```

run this command in vim command line
```
: call coc#util#install()
```

install dev Environment

Go
```
:CocInstall coc-go
:CocCommand go.install.gopls
```

