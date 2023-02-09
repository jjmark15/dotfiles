if command_exists age; then
  export AGE_DIR=~/.age

  if command_exists rg && command_exists sd; then
    AGE_PUB_KEY=$(age-keygen -y ${AGE_DIR}/key.txt)
    export AGE_PUB_KEY
  fi
fi

