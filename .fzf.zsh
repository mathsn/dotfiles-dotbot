# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/Ning/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/Ning/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/Ning/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/Ning/.fzf/shell/key-bindings.zsh"
