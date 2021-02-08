# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#Classis ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Tmux aliases
alias tn='tmux new -s'
alias ta='tmux attach-session -t'
alias tls='tmux ls'
alias tk='tmux kill-session -t'
alias td='tmux detach'

#umount when mounted with sshfs
alias fumount='fusermount -u'

#squeue aliases to monitor jobs
alias sqm='squeue -u ${USER} --format="%.16i %.17j %.2C %.4D %.3t %.21S %.21e %.9L"'
alias wsqm='watch -n 300 squeue -u ${USER} --format=\"%.16i %.17j %.2C %.4D %.3t %.21S %.21e %.9L\"'

#As aliases but with parameters
function para(){
  if [ "`echo $1 | cut -c-3`" == "gra" ]; then host="graham";fi
  if [ "`echo $1 | cut -c-3`" == "blg" ]; then host="beluga";fi
  if [ "`echo $1 | cut -c-3`" == "cdr" ]; then host="cedar";fi
  ssh -L "11111:$1:11111" "$host.computecanada.ca"
}

#Compute canada aliases
alias graham="ssh graham.computecanada.ca"
alias helios="ssh helios.calculquebec.ca"
alias beluga="ssh beluga.computecanada.ca"
alias cedar="ssh cedar.computecanada.ca"
