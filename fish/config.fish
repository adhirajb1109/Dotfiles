export BAT_THEME="ansi-dark"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow -g '!{.git,node_modules}/*'"
export RANGER_DEVICONS_SEPARATOR="  "
starship init fish | source
