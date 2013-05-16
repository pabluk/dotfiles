#!/bin/sh
#
# Sample script to launch a django environment with tmux
#
# Pablo SEMINARIO <pabluk@gmail.com>
#

WORKSPACE=~/dev/projects
PROJECT=mysite

cd $WORKSPACE/$PROJECT

tmux start-server

tmux new-session -d -s $PROJECT -n runserver

tmux new-window -t$PROJECT:2 -n vim
tmux new-window -t$PROJECT:3 -n shell
tmux new-window -t$PROJECT:4 -n celeryd

tmux send-keys -t$PROJECT:1 'source virtenv/bin/activate' C-m
tmux send-keys -t$PROJECT:1 'python manage.py runserver' C-m

tmux send-keys -t$PROJECT:3 'source virtenv/bin/activate; clear' C-m

tmux send-keys -t$PROJECT:4 'source virtenv/bin/activate' C-m
tmux send-keys -t$PROJECT:4 'python manage.py celeryd -l INFO -c 2 -B -E' C-m

tmux select-window -t$PROJECT:2
tmux attach-session -d -t$PROJECT
