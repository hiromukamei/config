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
  echo $1
  git --git-dir=${actual_config_files_dir}/.git --work-tree=${actual_config_files_dir} pull origin master
  rm ${actual_config_files_dir}/.vimrc
  rm ${actual_config_files_dir}/.zshrc
  rm ${actual_config_files_dir}/*.toml
fi
ln -s ${actual_config_files_dir}/.vimrc ~
ln -s ${actual_config_files_dir}/.zshrc ~
ln -s ${actual_config_files_dir}/*.toml ~/.vim/dein/tomls
