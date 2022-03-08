SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

stack build
sudo install -Dm755 "$(stack path --local-install-root)/bin/qriollo" "/usr/bin/qr"
sudo install -Dm666 Chamuyo.q "/usr/share/qriollo/Chamuyo.q"
echo "export RUTA_QRIOLLO=".:/usr/share/qriollo"" > qriollo.sh
sudo install qriollo.sh -Dm755 /etc/profile.d/qriollo.sh
stack clean
rm qriollo.sh
