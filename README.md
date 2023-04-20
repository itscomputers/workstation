# workstation setup

## mac applications
- browser
- iterm2

## iterm config
- install [homebrew](https://brew.sh)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- install git
```bash
brew install git
```

- [ssh keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

- get workstation repo
```bash
git clone git@github.com:itscomputers/workstation.git ~/itscomputers/workstation
```

- install [oh-my-zsh](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
  - set `ZSH_THEME` to `af-magic`
  - set untracked files as not dirty `DISABLE_UNTRACKED_FILES_DIRTY="true"`
  - set custom zsh `ZSH_CUSTOM=~/itscomputer/workstation/config`

- language tooling
  - python / pyenv / poetry
  - ruby /rbenv / bundle
  - rust

- install just
```bash
brew install just
```

- install [ripgrep](https://github.com/BurntSushi/ripgrep)
```bash
brew install rg
```

- install [fzf](https://github.com/junegunn/fzf)
```bash
brew install fzf
$(brew --prefix)/opt/fzf/install
```

- install tmux
```bash
brew install tmux
cp ~/itscomputers/workstation/config/.tmux.conf ~/
```

- copy vim config
```bash
cp ~/itscomputers/workstation/config/.vimrc ~/
```

- restart iterm
