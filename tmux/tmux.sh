#!/bin/sh
#
# A tmux script for Django projects
#

PROJECT_NAME=example-project
PROJECT_DIR=~/dev/projects
PROJECT_VIRTENV=~/dev/virtenv

cd $PROJECT_DIR/$PROJECT_NAME

tmux start-server

tmux new-session -d -s $PROJECT_NAME -n runserver

tmux new-window -t$PROJECT_NAME:2 -n vim
tmux new-window -t$PROJECT_NAME:3 -n shell

tmux send-keys -t$PROJECT_NAME:1 'source $PROJECT_VIRTENV/$PROJECT_NAME/bin/activate; clear' C-m
tmux send-keys -t$PROJECT_NAME:1 'python manage.py runserver' C-m
tmux send-keys -t$PROJECT_NAME:2 'source $PROJECT_VIRTENV/$PROJECT_NAME/bin/activate; clear' C-m

tmux select-window -t$PROJECT_NAME:2
tmux attach-session -d -t$PROJECT_NAME
