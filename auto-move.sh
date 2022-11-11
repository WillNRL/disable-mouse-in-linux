rm -f /bin/disable-mouse
rm -f /bin/disable-mouse/automated.py
rm -f /lib/systemd/system/disable-mouse.service

mkdir /bin/disable-mouse
cp automated.py /bin/disable-mouse/
cp disable-mouse.servie /lib/systemd/system/

systemctl start disable-mouse
systemctl enable disable-mouse