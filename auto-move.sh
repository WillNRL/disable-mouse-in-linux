# rm -f /bin/disable-mouse/automated.py
# rm -f /lib/systemd/system/disable-mouse.service

mkdir /bin/disable-mouse
cp disable-mouse.sh /bin/disable-mouse/
cp disable-mouse.service /lib/systemd/system/

systemctl daemon-reload
systemctl start disable-mouse
systemctl enable disable-mouse
sudo systemctl status disable-mouse