#!/bin/sh
# Base initialization for the cloudinit setup system
# Create the init files
touch /root/init_node.sh
touch /root/variables.sh

# Add shebang to head of files
echo "#!/bin/bash" > /root/init_node.sh
echo ". ./variables.sh" > /root/init_node.sh
echo "#!/bin/bash" > /root/variables.sh

# Make files executable
chmod +x /root/init_node.sh
chmod +x /root/variables.sh
