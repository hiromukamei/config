zsh & vim & git $ tmux config files
===

## Installation
```
./mkenv.sh [mac | linux] install
```

Also you need to get **zsh-conmpletions** and change FPATH in .zshrc

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
Please change username & email in .gitconfig according to your environment
