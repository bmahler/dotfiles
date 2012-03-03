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

# PS1="${reset_color}[${cyan}\A${reset_color}]${reset_color}${user_color}\u@\h(\l)${white}:${blue}\W${reset_color}[${yellow}\$?${reset_color}]${white}"'\$'"${reset_color} "
export PS1="${white}[\A]${green}\u@\h${white}:${cyan}\W\`if [ \$? = 0 ]; then echo -e '${reset_color}\$'; else echo -e '${red}\$'; fi\`${reset_color} "
