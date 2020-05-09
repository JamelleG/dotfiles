# Jamelle's Dotfiles

I have finally... decided to start organising my config files, the following was created as a git bare repo and contains the bare minimum


### ADD .DOTFILES TO GITIGNORE

```bash
echo ".dotfiles" >> .gitignore
```

### SET TEMPORARY ALIAS

```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```
### CLONE THE REPO WITH

```bash
git clone --bare https://github.com/jamelleg/dotfiles $HOME/.dotfiles
```

### OR 
```bash
git clone --bare git@github.com:jamelleg/dotfiles $HOME/.dotfiles
```

### CHECKOUT BASE BRANCH

```bash
dotfiles checkout base
```


### REMOVE UNTRACKED FILES

```bash
dotfiles config --local status.showUntrackedFiles no
```


## TO BE CONTINUED DOT DOT DOT


