if [ -d "$HOME/.cargo/bin" ]; then
  addtopath "$HOME/.cargo/bin"

  if command_exists direnv; then
    alias ct="cargo nextest"
    alias cnt="cargo nextest"
    alias cntr="cargo nextest run"
  fi
fi
