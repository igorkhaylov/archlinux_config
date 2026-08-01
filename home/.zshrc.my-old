autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
# prompt redhat
prompt adam1



# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_}
%# '

RPROMPT=\$vcs_info_msg_0_

# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )" 
# PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)' 

# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# PROMPT="$(virtualenv_prompt_info)%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

bindkey "[C" forward-word
bindkey "[D" backward-word

