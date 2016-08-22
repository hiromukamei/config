#!/bin/sh


actual_config_files_dir=`dirname "${0}"`
expr "${0}" : "/.*" > /dev/null || actual_config_files_dir=`(cd "${actual_config_files_dir}" && pwd)`

mkdir -p ~/.vim/dein/tomls
ln -s ${actual_config_files_dir}/.vimrc ~
ln -s ${actual_config_files_dir}/.zshrc ~
ln -s ${actual_config_files_dir}/*.toml ~/.vim/dein/tomls
