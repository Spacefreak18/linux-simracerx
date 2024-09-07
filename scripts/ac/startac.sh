#!/bin/sh

tmux new-session -d -s "racerx"

tmux new-window -t racerx:1 -n createsimshm
tmux send-keys -t racerx:1 "~/shmwrap/ac/createsimshm" Enter

tmux new-window -t racerx:2 -n monocoque
tmux send-keys -t racerx:2 "sleep 3 && monocoque play" Enter

tmux new-window -t racerx:3 -n simmonitorvocore
tmux send-keys -t racerx:3 "sleep 3 && FBROTATE=1 FBDEV=/dev/fb1 simmonitor play -u fb" Enter

tmux new-window -t racerx:4 -n simmonitortelem
tmux send-keys -t racerx:4 "sleep 3 && simmonitor play -u cli -m" Enter

tmux new-window -t racerx:5 -n simmonitorflags
tmux send-keys -t racerx:5 "sleep 3 && simmonitor play -u web --uiconf /home/racerx/.config/simmonitor/simmonitor.config.flags" Enter

tmux new-window -t racerx:6 -n devtodev
tmux send-keys -t racerx:6 "sleep 3 && devtodev /dev/fb1 /dev/fb0" Enter

tmux new-window -t racerx:7 -n open
tmux send-keys -t racerx:7 "sleep 3" Enter

tmux new-window -t racerx:8 -n crewchief
tmux send-keys -t racerx:8 "sleep 3 && ~/.local/bin/startcrewac.sh" Enter
