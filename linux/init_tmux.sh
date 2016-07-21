mkdir ~./.tmux
cd ~/.tmux
test -d tmux-resurrect || git clone https://github.com/tmux-plugins/tmux-resurrect.git
test -d tmux-continuum || git clone https://github.com/tmux-plugins/tmux-continuum.git
