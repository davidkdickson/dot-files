ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true"
plugins=(docker docker-compose z)
source $ZSH/oh-my-zsh.sh

# loop and source aliases
for file in ~/.dot-files/zsh/aliases/*; do
  source $file
done

source ~/.dot-files/zsh/vi-mode
source ~/.dot-files/docker/docker
source ~/.dot-files/ruby/ruby

export PSQL_EDITOR="vim"
export EDITOR=nvim
export PATH=~/.dot-files/scripts:$PATH

eval `keychain -q --agents ssh --eval id_rsa`

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/david/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/david/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/david/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/david/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

eval "$(rbenv init -)"
