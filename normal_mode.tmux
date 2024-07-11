#!/usr/bin/env bash

tmux bind -n C-u set-option -g key-table normal
tmux bind -T normal Any send-keys -X
tmux bind -T normal C-u set-option -g key-table root

tmux bind -T normal h select-pane -L
tmux bind -T normal j select-pane -D
tmux bind -T normal k select-pane -U
tmux bind -T normal l select-pane -R
