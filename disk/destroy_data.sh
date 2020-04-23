#!/bin/bash
echo "Erasing data from hard disk"
echo "-------------COMMAND------------"
echo "Using dd command"
echo "dd if=/dev/zero of=/dev/sda"
echo "********************************"
echo "Using badblocks"
echo "badblocks -ws /dev/sda"
echo "--------------------------------"
