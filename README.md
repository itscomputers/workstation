# workstation setup

## browser

- download [firefox](https://www.mozilla.org/en-US/firefox/)

- download [arc browser](https://arc.net/)

## terminal setup

### homebrew

- install [homebrew](https://brew.sh)

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### git

- install git

```zsh
brew install git
```

- generate [ssh keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### workstation

- get workstation repo

```zsh
git clone git@github.com:itscomputers/workstation.git ~/workstation
```

### alacritty

- install [alacritty](https://alacritty.org/config-alacritty.html)

```zsh
brew install alacritty
```

- copy alacritty config

```zsh
cp -r ~/workstation/config/alacritty ~/.config
```

### oh my zsh

- install [oh-my-zsh](https://ohmyz.sh/)

```zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- copy zshrc config

```zsh
cp ~/workstation/config/.zshrc ~/.zshrc
cp -r ~/workstation/config/alacritty ~/.config
```

- install [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)

```zsh
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

### neovim

- install [neovim](https://github.com/neovim/neovim/)

```zsh
brew install neovim
```

- copy neovim config

```zsh
cp -r ~/workstation/config/nvim ~/.config
```

### tmux

- install tmux

```zsh
brew install tmux
```

- copy tmux config

```zsh
cp -r ~/workstation/config/tmux ~/.config
```

### asdf

using [asdf](https://asdf-vm.com/guide/getting-started.html)

- install dependencies

```zsh
brew install coreutils curl
```

- download asdf (check website for version)

```zsh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
```

- add languages, e.g.

```zsh
asdf plugin add ruby
asdf latest ruby
asdf install ruby latest
```

- install just

```zsh
brew install just
```

- install [ripgrep](https://github.com/BurntSushi/ripgrep)

```zsh
brew install rg
```

- install [fzf](https://github.com/junegunn/fzf)

```zsh
brew install fzf
$(brew --prefix)/opt/fzf/install
```
