# vim:ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8

# purple username
username() {
   echo "%{$fg_bold[cyan]%}%n%{$reset_color%}"
}

# current directory, two levels deep
directory() {
   echo "%{$fg_bold[cyan]%}%2~%{$reset_color%}"
}

# current time with milliseconds
current_time() {
   echo "%*"
}

# set the git_prompt_info text: ✱
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[white]%}\uE0A0%{$reset_color%} %{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✱%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Status command
function ok_command_status() {
  echo "%{$fg_bold[cyan]%}❱%{$fg_bold[yellow]%}❱"
}

function err_command_status() {
  echo "%{$fg_bold[red]%}❱❱"
}

function command_status() {
    echo "%(?.$(ok_command_status).$(err_command_status))"
}

function git_prompt() {
   echo "$(git_prompt_info)"
}

# putting it all together
PROMPT='$(command_status) $(directory)$(git_prompt): '
RPROMPT=''
