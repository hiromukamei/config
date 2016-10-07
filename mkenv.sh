#!/bin/sh


check_args(){
  host_kinds=('mac' 'linux')
  commands=('install' 'update' 'cleanup')

  if ! `eval echo '${'"$1"'[@]}' | grep -wq "$2"`; then
    printf '\e[33m***\e[0m Some parameters were wrong!!\n'
    exit 1
  fi
}


if [ $# -ne 2 ]; then
  printf '\e[33m***\e[0m Usage: ./mkenv.sh [mac | linux] [install | update | cleanup]\n'
  exit 1
else
  check_args 'host_kinds' "$1"
  check_args 'commands' "$2"
fi

host="$1"
command="$2"

actual_config_files_dir=`dirname "${0}"`
expr "$0" : "/.*" > /dev/null || actual_config_files_dir=`(cd "${actual_config_files_dir}" && pwd)`

if [ ${command} = "install" ]; then
  mkdir -p ~/.vim/dein/tomls
elif [ ${command} = "update" ]; then
  git --git-dir=${actual_config_files_dir}/.git --work-tree=${actual_config_files_dir} pull origin master
  rm ~/.vimrc
  rm ~/.zshrc
  rm ~/.vim/dein/tomls/*.toml
  rm ~/.gitconfig
  rm ~/.tmux.conf
elif [ ${command} = "cleanup" ]; then
  rm ~/.vimrc
  rm ~/.zshrc
  rm -r ~/.vim
  rm ~/.gitconfig
  rm ~/.tmux.conf
  exit 0
fi

ln -s ${actual_config_files_dir}/vim/vimrc ~/.vimrc
ln -s ${actual_config_files_dir}/zsh/${host}_zshrc ~/.zshrc
ln -s ${actual_config_files_dir}/git/gitconfig ~/.gitconfig
ln -s ${actual_config_files_dir}/vim/*.toml ~/.vim/dein/tomls
ln -s ${actual_config_files_dir}/tmux/${host}_tmux.conf ~/.tmux.conf
