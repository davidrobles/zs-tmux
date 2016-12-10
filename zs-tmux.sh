#!/bin/zsh

SESSIONNAME="zs"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -n script -d
    tmux send-keys -t $SESSIONNAME "~/zs-tmux/zs-tmux-script.sh" C-m
fi

tmux attach -t $SESSIONNAME