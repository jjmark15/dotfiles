if path_has_bins age 2>/dev/null; then
  export AGE_DIR=~/.age

  if path_has_bins rg sd 2>/dev/null; then
    AGE_PUB_KEY=$(age-keygen -y ${AGE_DIR}/key.txt)
  fi
fi

export AGE_PUB_KEY