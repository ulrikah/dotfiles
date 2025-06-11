#!/bin/bash

# based off of https://ryan.himmelwright.net/post/scripting-tmux-workspaces/

TMUX_SESSION_NAME="work"

TMUX_SESSION_EXISTS=$(tmux list-sessions | grep $TMUX_SESSION_NAME)

# only create tmux session if it doesn"t already exist
if [ "$TMUX_SESSION_EXISTS" = "" ]
then
  # start in home directory
  cd

  tmux new-session -d -s $TMUX_SESSION_NAME

  tmux rename-window -t 0 "nb"
  tmux split-window -h -t "nb"
  tmux send-keys -t "nb.0" "cd $HOME/dev/nb" C-m "clear" C-m
  tmux send-keys -t "nb.1" "cd $HOME/dev/nb" C-m "clear" C-m

  tmux new-window -t $TMUX_SESSION_NAME:1 -n "misc"
  tmux send-keys -t "misc" "cd $HOME/Documents/bobler" C-m "clear" C-m

  tmux new-window -t $TMUX_SESSION_NAME:2 -n "top"
  tmux send-keys -t "top" "btop" C-m

  tmux new-window -t $TMUX_SESSION_NAME:3 -n "dhlab"
  tmux send-keys -t "dhlab" "pyenv activate dhlab" C-m # "ipython" C-m "import dhlab as dh" C-m
  
  tmux new-window -t $TMUX_SESSION_NAME:3 -n "gcloud"

  cd -
fi

tmux attach-session -t $TMUX_SESSION_NAME:0.0;

