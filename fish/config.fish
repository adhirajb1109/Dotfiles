set -x BAT_THEME ansi-dark
set -x FZF_DEFAULT_COMMAND "rg --files --no-ignore --hidden --follow -g '!{.git,node_modules}/*'"
starship init fish | source
