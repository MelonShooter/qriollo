SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

stack build
sudo cp "$(stack path --local-install-root)/bin/qriollo" /usr/bin/qr
stack clean
