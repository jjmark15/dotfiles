if [ "$(command -v docker)" ]; then
  dbrr() {
    docker run --rm -it "$@" "$(docker build -q .)"
  }
fi

