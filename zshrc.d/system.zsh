function kill-port() {
  PORT=$1

  if [ -z "$PORT" ]; then
    echo "PORT is a mandatory argument"
    return
  fi

  PID="$(lsof -t -i:"${PORT}")"
  if [ -z "$PID" ]; then
    echo "No processes found on port ${PORT}"
    return
  fi

  kill -9 "$PID"
}
