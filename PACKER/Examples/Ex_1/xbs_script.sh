#!/bin/bash
set -e
#xbs_script.sh

echo
echo
echo "  Installing something not in source AMI ..."
sudo yum install traceroute -y
echo
echo "  New installation is done."

echo
echo "  What was installed:"
which traceroute
echo

echo
echo
echo " DONE"
echo