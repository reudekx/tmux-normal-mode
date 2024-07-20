#!/usr/bin/env bash

tmux bind -n F2 set-option -g key-table normal
tmux bind -T normal Any send-keys -X
tmux bind -T normal Space set-option -g key-table root

tmux bind -T normal h select-pane -L
tmux bind -T normal j select-pane -D
tmux bind -T normal k select-pane -U
tmux bind -T normal l select-pane -R

tmux bind -T normal C-k split-window -v -c '#{pane_current_path}'
tmux bind -T normal C-l split-window -h -c '#{pane_current_path}'

tmux bind -T normal C-x kill-pane

tmux bind -T normal c new-window
tmux bind -T normal C-c command-prompt 'rename-window %%'

tmux bind -T normal n next-window
tmux bind -T normal p previous-window
