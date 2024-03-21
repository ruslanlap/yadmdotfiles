# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ruslan/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ruslan/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/ruslan/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/ruslan/.fzf/shell/key-bindings.bash"
