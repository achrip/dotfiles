eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(thefuck --alias)"
eval "$(mise activate zsh)"

export PATH="/opt/podman/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="$HOME/.config/aider:$PATH"
export EDITOR=nvim
export FZF_DEFAULT_OPTS='--ansi'
export FZF_ALT_C_COMMAND="fd --type d --max-depth 5 --exclude .git --exclude node_modules --search-path ~"

alias vim=nvim
alias sd='cd ~ && cd "$(fd --type d --max-depth 5 --exclude .git --exclude node_modules | fzf)"'
alias scd="cd \$(fd --type d | fzf)" 
alias tat="tmux a -t"
alias ls="eza"
alias lg="lazygit"
alias fsl="fossil"
alias sail='[ -f sail ] && sh sail || bash vendor/bin/sail'

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#
# Added by `rbenv init` on Mon Jun 23 22:43:28 WIB 2025
eval "$(rbenv init - --no-rehash zsh)"

# API Keys
export GEMINI_API_KEY="AIzaSyCBt6YhiAbxFYdJWAxMHL-UdCITLCb88Y8"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Sesh
# A robust function to select and connect to a sesh session
sc() {
  # Capture the selection into a local variable
  local selected_session
  selected_session=$(sesh list -i | gum filter --limit 1 --placeholder 'Pick a sesh' --prompt='⚡')

  # Check if a session was actually selected (the variable is not empty)
  if [[ -n "$selected_session" ]]; then
    sesh connect "$selected_session"
  else
    # If nothing was selected (e.g., you pressed Esc), print a message and do nothing
    echo "No session selected."
    return 1
  fi
}
