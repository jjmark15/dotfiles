PYENV_BIN_DIR="${HOME}/.pyenv/bin"

if [ -d "$PYENV_BIN_DIR" ]; then
  export PIPENV_VENV_IN_PROJECT="true"
  export PYENV_VIRTUALENV_DISABLE_PROMP=2
  export PATH="$PYENV_BIN_DIR:$PATH"

  activate_venv() {
    if [ -d "./venv" ]; then
      source ./venv/bin/activate
    fi
    if [ -d "./.venv" ]; then
      source ./.venv/bin/activate
    fi
  }

  pyenv() {
    eval "$(command pyenv init -)"
    eval "$(command pyenv virtualenv-init -)"
    pyenv "$@"
  }
fi
