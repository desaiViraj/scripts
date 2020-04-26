#!/bin/bash
echo "_________________________________________________________________________________"
echo "To check all users login details run, lastlog command."
lastlog | head -n 4
echo "To check failed login attempts run, lastb command"
lastb | head -n 4
echo "Logs are stored in /var/log/btmp file."

echo "_________________________________________________________________________________"

