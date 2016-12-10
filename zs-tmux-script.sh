tmux rename-session 'zs'

###############
# /usr/local/ #
###############

tmux rename-window 'usrlocal'

# Top pane
tmux send-keys 'cd /usr/local/include' C-m
tmux send-keys 'ls -l' C-m

# Bottom pane
tmux split-window
tmux send-keys 'cd /usr/local/lib' C-m
tmux send-keys 'ls -l' C-m

###############
# ZS Projects #
###############

open_zs() {
    tmux new-window
    tmux rename-window "$1"

    # Left pane
    tmux send-keys "cd ~/projects/$1/" C-m
    tmux send-keys "vim CMakeLists.txt" C-m

    # Top right pane
    tmux split-window -h
    tmux send-keys "cd ~/projects/$1/" C-m

    # Bottom right pane
    tmux split-window
    tmux send-keys "cd ~/projects/$1/" C-m
    tmux send-keys "git status" C-m
}

open_zs 'zs-framework'
open_zs 'zs-tic-tac-toe'
open_zs 'zs-connect-four'
open_zs 'zs-sandbox'
