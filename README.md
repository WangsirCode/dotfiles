#some config files in osx
##Packages
- vim       configuration for vim and gvim
- zsh       need `oh-my-zsh` installed
- tmux      custom shortcut prefix and etc...
- git       git username, email and default editor config

##Usage
Using [GNU](http://www.gnu.org/software/stow/) Stow to symlink them to ~/ directory.

```
git clone https://github.com/WangsirCode/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# install package for an specified configuration
stow <package-name>
# uninstall
stow -D <package-name>
# install to specified path
sudo stow zsh -t /
```

Inspired by

- [ladrift](https://github.com/ladrift/dotfiles)


