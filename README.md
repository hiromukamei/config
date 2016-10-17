Dotfiles
===


## Installation

Before installation, please make sure than 'vim', 'git', 'zsh' & 'tmux' are avaiable.

```
./mkenv.sh [mac | linux] install
```

**Note:**
You need to get 'zsh-conmpletions' as well.
Install it in /usr/local/share/ by using 'homebrew' or 'git'.
```
# homebrew
brew install zsh-completions
# git
git clone git://github.com/zsh-users/zsh-completions.git /usr/local/share/
```


## Update

```
./mkenv.sh [mac | linux] update
```


## Clean up

```
./mkenv.sh [mac | linux] cleanup
```

**Note:**  
Be careful to execute 'cleanup' because your [.vimrc, .vim/, .tmux.conf, .gitconfig] under home-directory will be deleted.


## Configuration

Please change username & email in .gitconfig according to your environment.
