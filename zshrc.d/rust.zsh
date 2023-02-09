if [ -d "$HOME/.cargo/bin" ]; then
  addtopath "$HOME/.cargo/bin"

  if [ "$(command -v direnv)" ]; then
    alias cnt="cargo nextest"
    alias cntr="cargo nextest run"
  fi
fi
