git_reflog_interactive_reset() {
  local selected_ref

  selected_ref=$(git reflog --color=always | \
    fzf --ansi --no-sort --reverse --tiebreak=index \
        --preview "echo {} | grep -o '[a-z0-9]\{7\}' | head -1 | xargs -I % sh -c 'git show --color=always --name-only --pretty=medium %'" | \
    rg -o 'HEAD@\{\d\}' | head -n 1)

  if [[ -z ${selected_ref} ]]; then
    echo "Ref not selected"
    return 1
  fi

  git reset --hard "${selected_ref}"
}

git_log_interactive_reset() {
  local selected_ref

  selected_ref=$(git log --oneline --decorate --color=always | \
    fzf --ansi --no-sort --reverse --tiebreak=index \
        --preview "echo {} | grep -o '[a-z0-9]\{7\}' | head -1 | xargs -I % sh -c 'git show --color=always --name-only --pretty=medium %'" | \
    rg -o '^[a-z0-9]{7}' | head -n 1)

  if [[ -z ${selected_ref} ]]; then
    echo "Ref not selected"
    return 1
  fi

  git reset --hard "${selected_ref}"
}