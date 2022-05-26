if [ "$(command -v docker)" ]; then
  dbrr() {
    docker build . && docker run --rm -it "$@" "$(docker build -q .)"
  }
fi

