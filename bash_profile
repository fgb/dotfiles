# bash colors
PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[0;34m\]\w\[\e[m\] \[\e[0;32m\]|\[\e[m\] \[\e[0;37m\]'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# new files just accesible to owner / group by default
umask go-rwx

# safer / more descriptive commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color=auto'
alias ls='ls -1sh'

# personal
alias dot='cd ~/.dotfiles'
alias src='cd ~/Source'
alias fgb='src && cd profiles/fgb.github.io/'

alias serve='bundle exec jekyll serve'

# research
alias res='cd ~/Research/Source/'
alias mod='res && cd modules/'
alias com='res && cd computation/'
alias com_of='com && cd unsteady_of/of_disamb/'
alias com_gl='com && cd crawler_gaits/gait_learner/'
alias emb='res && cd embedded/'
alias emb_of='emb && cd unsteady_optical_flow/py/'
alias sim='res && cd simulations/'

alias pipython='clear && ipython --no-confirm-exit --deep-reload'
alias qipython='clear && ipython qtconsole --paging=hsplit --stylesheet=~/.dotfiles/py/qtconsole_night.css --style=colorful --ConsoleWidget.font_family="Source Code Pro Light" --ConsoleWidget.font_size=12'
alias blender='~/Applications/media/Blender.app/Contents/MacOS/blender'

# git
alias gs='clear && git status --short --branch'
alias gd='clear && git diff --stat && git diff --color-words'
alias ga='git commit --all --amend --reuse-message HEAD'

# work
alias fmk='src && cd fmk/'
alias gen='fmk && cd code/release/CodeGen/JSON/WebAPI/'
alias moxa='telnet 192.168.48.83 4001'

# update
alias upbash='source ~/.bash_profile'
alias upbrew='brew update && brew upgrade && brew cleanup && brew cask cleanup && brew prune'
alias uppip="pip install --upgrade pip && pip install --upgrade \`pip list --format legacy | awk '{print \$1}'\`"
alias upgem='gem update'
alias upbundle='bundle update'

# path to python modules
export PYTHONPATH="~/Research/Source/modules:$PYTHONPATH"

# path to binaries
export PATH="~/.dotfiles/bin:/usr/local/bin:${PATH}"
launchctl setenv PATH "$PATH:$(launchctl getenv PATH)"

# path to mplab xc16 compiler
export PATH="$PATH:~/Applications/devel/microchip/xc16/bin"
