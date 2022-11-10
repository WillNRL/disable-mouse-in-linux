import os
os.system("xinput | grep -i mouse | grep -oi [0-9][0-9] > tmp-id")
file = open("tmp-id").readlines()
for i in file:
    print(i)