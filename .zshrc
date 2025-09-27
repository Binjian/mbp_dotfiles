if [ -n "${ZSH_DEBUGRC+1}" ]; then
	zmodload zsh/zprof
fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fast-syntax-highlighting zsh-autocomplete asdf pyenv python poetry tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR='vim'

export HOMEBREW_NO_AUTO_UPDATE=1

##tmuxifier import
#export PATH="$HOME/.config/tmuxifier/bin:$PATH"
#eval "$(tmuxifier init -)"
#export TMUXIFIER_LAYOUT_PATH="$HOME/.config/.tmux-layouts"
#export TMUXIFIER_NO_COMPLETE=1

export TMUXINATOR_CONFIG="$HOME/.config/tmuxinator"

# doom emacs path setting
export PATH="$PATH:$HOME/.config/emacs/bin"

# system python
#export PATH="$PATH:$HOME/Library/Python/3.12/bin"

# system rust
export PATH="$PATH:$HOME/.cargo/bin"

#Pyenv path setting
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/jpeg/lib"
export CPPFLAGS="-I/opt/homebrew/opt/jpeg/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/jpeg/lib/pkgconfig"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/x/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/x/miniforge3/etc/profile.d/conda.sh" ]; then
#        . "/Users/x/miniforge3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/x/miniforge3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#
#if [ -f "/Users/x/miniforge3/etc/profile.d/mamba.sh" ]; then
#    . "/Users/x/miniforge3/etc/profile.d/mamba.sh"
#fi
## <<< conda initialize <<<

export PATH="/Library/Tex/texbin:$PATH"
# EAF emacs application framework for update-tld-names, pylupdate3 pyuuic6
#export PATH="~/Library/Python/3.11/bin/:$PATH"


export MAGICK_HOME=/opt/homebrew/opt/imagemagick/
export PATH="/opt/homebrew/opt/imagemagick/bin:$PATH"

# Created by `pipx` on 2024-05-14 03:20:55
export PATH="$PATH:/Users/x/.local/bin"
# export PATH="/opt/homebrew/opt/ghostscript-x11/bin:$PATH"
#
export LD_LIBRARY_PATH="~/.mujoco/mujoco316/bin:$LD_LIBRARY_PATH"

export MODULAR_HOME="/Users/x/.modular"
export PATH="/Users/x/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="/Users/x/.modular/pkg/packages.modular.com_max/bin:$PATH"
export PYTHON_CONFIGURE_OPTS='--enable-optimizations --with-lto --enable-framework'
export OpenMP_ROOT=$(brew --prefix)/opt/libomp
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/devel/math/coinhsl/lib"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export HDF5_DIR=/opt/homebrew/opt/hdf5 
export BLOSC_DIR=/opt/homebrew/opt/c-blosc
export PATH="$HOME/.cask/bin:$PATH"

export PATH="/opt/homebrew/opt/tcl-tk@8/bin:$PATH"
export PATH="/opt/homebrew/opt/ccache/libexec:$PATH"

# source "/opt/homebrew/bin/asdf.sh"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH="$HOME/.asdf/installs/golang/1.22.3/packages/bin:$PATH"
if [ -n "${ZSH_DEBUGRC+1}" ]; then
	zprof
fi
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/USERS/x/Libray/Python/3.12/bin:$PATH"

# poetry
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/x/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
