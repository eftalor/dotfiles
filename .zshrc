###oh-my-zsh stuff
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(zsh-autosuggestions zsh-syntax-highlighting git docker fzf helm kubectl minikube terraform ssh)
# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

#docker plugin enable completion
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

###end 

[[ -f ~/.myenv ]] && source ~/.myenv

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/eto/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

###p10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh
###end
