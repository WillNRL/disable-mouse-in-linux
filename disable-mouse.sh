#!/bin/bash
while :; do
    xinput | grep -i mouse | grep -oi [0-9][0-9] > /tmp/tmp-id;
    for valor in /tmp/tmp-id; do xinput disable $valor done;
done