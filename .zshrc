### .zshrc
### author: Ian Brault

# set prompt
export PS1=$'\n'"%B%F{blue}%4~%f %F{green}%#%f%b "

# load aliases
source $HOME/.alias

# add cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"
# add Qt to PATH
export PATH="/Users/ianbrault/Qt/5.15.1/clang_64/bin:$PATH"
# add poetry to PATH
export PATH="$HOME/.poetry/bin:$PATH"

# initialize pyenv
eval "$(pyenv init -)"
