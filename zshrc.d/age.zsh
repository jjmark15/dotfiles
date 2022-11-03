if path_has_bins age 2>/dev/null; then
  export AGE_DIR=~/.age

  if path_has_bins rg sd 2>/dev/null; then
    AGE_PUB_KEY=$(rg public\ key ${AGE_DIR}/key.txt | sd "# public key: " "")
  fi
fi

export AGE_PUB_KEY