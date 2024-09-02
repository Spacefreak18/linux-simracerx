#!/bin/sh

tmux new-session -d -s "RacerX"

tmux new-window -t RacerX:1 -n createsimshm '~/shmwrap/ac/createsimshm;'
tmux new-window -t RacerX:2 -n monocoque 'monocoque play;'
tmux new-window -t RacerX:3 -n simmonitor 'FBROTATE=1 FBDEV=/dev/fb1 simmonitor play -u fb;'
tmux new-window -t RacerX:4 -n simmonitor-telemetry 'simmonitor play -u cli -m;'
tmux new-window -t RacerX:5 -n crewchief '~/.local/bin/startcrewac.sh; zsh -i;'
