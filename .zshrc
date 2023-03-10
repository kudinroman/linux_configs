#setopt nocorrectall; setopt correctsetopt nocorrectall; setopt correct Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

if [ -z "${PATH-}" ]; then export PATH=/home/roman/.local/share/gem/ruby/3.0.0/gem; fi

setopt nocorrectall; setopt correct

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(~/.rbenv/bin/rbenv init - zsh)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source /usr/share/nvm/init-nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /usr/share/nvm/init-nvm.sh
set -o vi
