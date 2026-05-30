
eval "$(/opt/homebrew/bin/brew shellenv)"
if [[ -z "$CODEX_SANDBOX" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

##
# Your previous /Users/x/.zprofile file was backed up as /Users/x/.zprofile.macports-saved_2024-04-16_at_22:18:22
##

# MacPorts Installer addition on 2024-04-16_at_22:18:22: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2024-04-16_at_22:18:22: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


# Created by `pipx` on 2024-05-14 03:20:55
export PATH="$PATH:/Users/x/.local/bin"

# Codex sandbox: keep Neovim state/log writes inside writable temp storage and
# suppress the DSR terminal probe warning from this non-interactive PTY.
if [[ -n "$CODEX_SANDBOX" ]]; then
  export XDG_STATE_HOME="${TMPDIR:-/tmp}/codex-xdg-state"
  export NVIM_TEST=1
fi
