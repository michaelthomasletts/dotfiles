# refer to .aliases
[ -f ~/.aliases ] && source ~/.aliases

# Better history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY SHARE_HISTORY

# syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# intelligent autotabbing
autoload -Uz compinit
compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# stylized prompts
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats 'on %F{yellow}%b%f'
precmd() { vcs_info }
setopt prompt_subst
venv_segment='${VIRTUAL_ENV:+(%F{cyan}$(basename $VIRTUAL_ENV)%f) }'
ret_code='%(?..%F{red}✖ %?%f )'
PROMPT="${ret_code}${venv_segment}%F{green}%n@%m%f %F{blue}%1~%f ${vcs_info_msg_0_} %# "

# fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

