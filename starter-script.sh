#!/bin/sh
/etc/init.d/ssh start
useradd -m -s /bin/bash -c "prasanth" "prasanth" 
echo "prasanth:prasanth" | chpasswd
java -jar hello-world-0.1.0.jar


