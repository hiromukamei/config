##rbenv,pyenv,npmにPATHを通す
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/share/npm/bin:$PATH" 

##補完機能を有効にする
#how to use zsh-completions
#brew install zsh-completions
#下のpathは環境に応じて変更
#note: homebrewが使えなければ、FPATHをコメントアウト、compinit -u => compinit
FPATH=/usr/local/Cellar/zsh-completions/0.12.0/share/zsh-completions/:$FPATH
autoload -U compinit
compinit -u

##環境変数
export LANG=ja_JP.UTF-8
export EDITOR=vim

##履歴設定
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

##同じコマンドをヒストリに残さない
setopt hist_ignore_dups

##同時に起動したzshの間でヒストリを共有する
setopt share_history

##vim風keybind
bindkey -v

##履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

##cd省略
setopt auto_cd

##cd履歴
setopt auto_pushd

##Ctrl+Dでzshを終了しない
setopt ignore_eof

##コマンド修正
setopt correct

##補完時にbeep音を鳴らさない
setopt nolistbeep

##補完候補を詰めて表示
setopt list_packed

##shell prompt設定
autoload -Uz colors
colors

PROMPT="%F{magenta}%n%f@%F{cyan}%m%f%# "
RPROMPT="[%F{green}%d%f]"

##lsコマンド色設定
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

##補完時色設定
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'pi=33' 'ex=31'

##エイリアス設定
alias ls='ls -G'
alias ...='cd ../..'
alias ....='cd ../../..'
alias be='bundle exec'

##補完候補など表示する時はその場に表示し、終了時に画面から消す
setopt ALWAYS_LAST_PROMPT

##ディレクトリ名を補完すると、末尾がスラッシュになる。
setopt AUTO_PARAM_SLASH

##大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
