#!/bin/sh


if [ $# -ne 1 ]; then
  printf '\e[33m***\e[0m Usage: ./mkenv.sh [install/update]\n'
  exit 1
fi

actual_config_files_dir=`dirname "${0}"`
expr "$0" : "/.*" > /dev/null || actual_config_files_dir=`(cd "${actual_config_files_dir}" && pwd)`

if [ "$1" = "install" ]; then
  mkdir -p ~/.vim/dein/tomls
elif [ "$1" = "update" ]; then
  git --git-dir=${actual_config_files_dir}/.git --work-tree=${actual_config_files_dir} pull origin master
  rm ~/.vimrc
  rm ~/.zshrc
  rm ~/.vim/dein/tomls/*.toml
  rm ~/.gitconfig
fi
ln -s ${actual_config_files_dir}/.vimrc ~
ln -s ${actual_config_files_dir}/.zshrc ~
ln -s ${actual_config_files_dir}/.gitconfig ~
ln -s ${actual_config_files_dir}/*.toml ~/.vim/dein/tomls
