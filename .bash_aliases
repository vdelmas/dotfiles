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

#umount when mounted with sshfs
alias fumount='fusermount -u'

#squeue aliases to monitor jobs
alias sqm='squeue -u ${USER} --format="%.9i  %.8j  %.4C %.4D %.7m  %.3t %.21S %.21e %.12L"'
alias wsqm='watch -n 60 squeue -u ${USER} --format=\"%.9i  %.8j  %.4C %.4D %.7m  %.3t %.21S %.21e %.12L\"'

#Compute canada aliases
alias graham="if mount | grep ~/graham > /dev/null; then echo \"Already mounted ~/graham skiping mouting phase\"; else sshfs delmasv@graham.computecanada.ca:/scratch/delmasv/ ~/graham/ -o IdentityFile=~/.ssh/id_rsa;fi;ssh -R 2222:localhost:22 graham.computecanada.ca"
alias beluga="if mount | grep ~/beluga > /dev/null; then echo \"Already mounted ~/beluga skiping mouting phase\"; else sshfs delmasv@beluga.computecanada.ca:/scratch/delmasv/ ~/beluga/ -o IdentityFile=~/.ssh/id_rsa;fi;ssh -R 2222:localhost:22 beluga.computecanada.ca"
alias cedar="if mount | grep ~/cedar > /dev/null; then echo \"Already mounted ~/cedar skiping mouting phase\"; else sshfs delmasv@cedar.computecanada.ca:/scratch/delmasv/ ~/cedar/ -o IdentityFile=~/.ssh/id_rsa;fi;ssh -R 2222:localhost:22 cedar.computecanada.ca"
