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
git clone git@github.com:itscomputers/workstation.git ~/workstation
```

- install [oh-my-zsh](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
  - set `ZSH_THEME` to `avit`
  - set untracked files as not dirty `DISABLE_UNTRACKED_FILES_DIRTY="true"`
  - set custom zsh `ZSH_CUSTOM=~/workstation/config`

- language tooling [asdf](https://asdf-vm.com/guide/getting-started.html)
  - install dependencies
    ```bash
    brew install coreutils curl
    ```
  - download asdf (check website for version)
    ```bash
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
    ```

  - add languages, eg
    ```bash
    asdf plugin add ruby
    asdf latest ruby
    asdf install ruby latest
    ```

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
cp ~/itscomputers/workstation/config/tmux.conf ~/
```

- install neovim
```bash
brew install neovim
cp -r ~/itscomputers/workstation/config/nvim ~/.config
```

- restart iterm
