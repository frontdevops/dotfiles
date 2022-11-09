# FrontDevOps dotfiles
This repository was created to replace my old repository for configuration and terminal work
https://github.com/frontdevops/my-bash-config

[![iTerm2 Theme and tools](https://raw.githubusercontent.com/frontdevops/my-bash-config/master/misc/assets/zsh.jpg)](https://www.youtube.com/embed/ygwv_FkHt9Y)

Video: https://youtu.be/ygwv_FkHt9Y


## Features

- Custom color scheme for iTerm and Terminal.app: [Squirrelsong](https://github.com/frontdevops/dotfiles/tree/master/color).
- Dotfiles synchronization: [sync.py](https://github.com/frontdevops/dotfiles/blob/master/sync.py).
- Sensible macOS defaults: [setup/osx.sh](https://github.com/frontdevops/dotfiles/blob/master/setup/osx.sh).
- Visual Studio Code settings synchronization: [vscode](https://github.com/frontdevops/dotfiles/tree/master/vscode).
- zsh install script: [setup/zsh.sh](https://github.com/frontdevops/dotfiles/blob/master/setup/zsh.sh).
- My magic project opener ([bin/repo](https://github.com/frontdevops/dotfiles/blob/master/bin/repo)).
- [zsh aliases](https://github.com/frontdevops/dotfiles/blob/master/zsh/aliases.zsh).
- [Git aliases](https://github.com/frontdevops/dotfiles/blob/master/tilde/.gitconfig).
- [Lots of scripts](https://github.com/frontdevops/dotfiles/tree/master/bin).
- User scripts for browser: [userscripts/](https://github.com/frontdevops/dotfiles/tree/master/userscripts).
- [macOS apps I use](https://github.com/frontdevops/dotfiles/wiki/OS-X-Apps).
- [Custom zsh theme](https://github.com/frontdevops/dotfiles/blob/master/tilde/.starship.toml) with Git status, etc. using Starship.

## Installation

(Fork this repository if you want to use my dotfiles.)

Prerequisites:

1. [Install Xcode Command Line Tools](http://railsapps.github.io/xcode-command-line-tools.html).
2. [Generate SSH key](https://help.github.com/articles/generating-ssh-keys/).
3. [Install Homebrew](http://brew.sh/).

Then run these commands in the terminal:

```
brew install git
git clone git@github.com:frontdevops/dotfiles.git ~/dotfiles
cd ~/dotfiles
./sync.py
```

Now you can run scripts like `setup/zsh.sh` or `setup/osx.sh` to install other stuff.

## Updating

```bash
dotfiles
```


## Notes

You can use any file extensions in `tilde/` to invoke proper syntax highlighting in code editor.


## Further customization

- Add any zsh profile customizations to `~/.zshlocal`.
- Add your git username/email/etc. to `~/.gitlocal`.


## Resources

- [GitHub ❤ ~/](http://dotfiles.github.io/)
- [Andrey Sapegin's dotfiles](https://github.com/sapegin/dotfiles)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Jan Moesen’s dotfiles](https://github.com/janmoesen/tilde)
- [Nicolas Gallagher’s dotfiles](https://github.com/necolas/dotfiles)
- [Zach Holman’s dotfiles](https://github.com/holman/dotfiles)
- [Yet Another Dotfile Repo](https://github.com/skwp/dotfiles)
- [Jacob Gillespie’s dotfiles](https://github.com/jacobwgillespie/dotfiles)

---

:shipit:
