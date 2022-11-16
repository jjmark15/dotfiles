NIM_DIR="${HOME}/.nimble"

if [ -d "${NIM_DIR}" ]; then
  addtopath "${NIM_DIR}/bin"
fi