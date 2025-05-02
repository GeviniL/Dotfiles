# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/alexlei/anaconda3/bin/conda
    eval /Users/alexlei/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# Add Homebrew to PATH
if test -d /opt/homebrew/bin
    eval (/opt/homebrew/bin/brew shellenv)
end

# Replace cd with zoxide
function cd
    z $argv
end

set fish_greeting


status --is-interactive; and pyenv init - | source
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
