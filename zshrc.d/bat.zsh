if command_exists bat; then
  alias bat="bat --theme=Nord"
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi