#!/bin/bash
echo -e "List of all shells available in the system:"
cat /etc/shells
echo -e "-----------------------------------------------"
default=$SHELL
echo -e "Default shell: $default"
echo -e "Enter shell to change:"
read shell
chsh --shell $shell
echo -e "Default shell changed to $shell"
echo -e "OLD SHELL=$default\nNEW SHELL=$SHELL"
echo -e "Provide password to reload setting:"
su - $USER
