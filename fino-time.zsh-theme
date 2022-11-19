# fino-time.zsh-theme


# %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} 


# use with a dark background and 256-color terminal!
# meant for people with rvm and git. tested only on os x 10.7.

# you can set your computer name in the ~/.box-name file if you want.

# borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function virtualenv_info {
    [ $virtual_env ] && echo '('`basename $virtual_env`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function box_name {
  local box="${short_host:-$host}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

prompt="╭─%{$FG[033]%}%n%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%.%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info) 📅 %D ⌲ ⏰ %*
╰─\$(virtualenv_info)\$(prompt_char) %{$FG[033]%}吴子曰: %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
ZSH_THEME_RUBY_PROMPT_PREFIX=" %{$FG[239]%}using%{$FG[243]%} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"
