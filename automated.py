import os
def disable():
    os.system("xinput | grep -i mouse | grep -oi [0-9][0-9] > /tmp/tmp-id")
    file = open("/tmp/tmp-id").readlines()
    for i in file:
        os.system(f"xinput disable {int(i)}")
while(True):
    disable()