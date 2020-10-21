# Git prompt
GIT_PROMPT_ONLY_IN_REPO=1
source /usr/local/app/bash-git-prompt/gitprompt.sh

# Autojump
. /usr/share/autojump/autojump.bash

## Ruby
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export GEM_HOME="$HOME/.gem"
#export GEM_PATH="$HOME/.gem"
#export PATH="$GEM_PATH/bin:$PATH"
#
## Python
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi

# Go
export GOROOT="/usr/local/app/go"
export GOPATH="/u/dev/gocode"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# Node
export PATH="$PATH:/usr/local/app/node/bin"

# Thefuck
#eval $(thefuck --alias)
## You can use whatever you want as an alias, like for Mondays:
#eval $(thefuck --alias FUCK)

# FZF
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

