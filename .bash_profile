export HISTSIZE=2000
export HISTFILESIZE=4000
shopt -s histappend

source ~/git-completion.bash

export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

reset_color="\[\033[0m\]"
blue_bold="\[\033[1;34m\]"
blue="\[\033[34m\]"
cyan_bold="\[\033[1;36m\]"
cyan="\[\033[36m\]"
green_bold="\[\033[1;32m\]"
green="\[\033[32m\]"
grey_bold="\[\e[1;30m\]"
grey="\[\e[30m\]"
purple_bold="\[\033[1;35m\]"
purple="\[\033[35m\]"
red_bold="\[\033[1;31m\]"
red="\[\033[31m\]"
yellow_bold="\[\033[1;33m\]"
yellow="\[\033[33m\]"
white_bold="\[\033[1;37m\]"
white="\[\033[37m\]"

function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  timer_display="(${timer_show}s)"
  if [ ${timer_show} = 0 ]; then
    timer_display="";
  fi
  unset timer
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

PS1='[last: ${timer_show}s][\w]$ '

# PS1="${reset_color}[${cyan}\A${reset_color}]${reset_color}${user_color}\u@\h(\l)${white}:${blue}\W${reset_color}[${yellow}\$?${reset_color}]${white}"'\$'"${reset_color} "
export PS1="${white}[\A]${green}\h${white}:${cyan}\W${white}\${timer_display}\`if [ \$? = 0 ]; then echo -e '${reset_color}\$'; else echo -e '${red}\$'; fi\`${reset_color} "
