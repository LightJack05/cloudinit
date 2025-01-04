#!/bin/sh
# Base initialization for the cloudinit setup system
# Create the init files
touch /root/init_node.sh
touch /root/variables.sh

# Add shebang to head of files
echo "#!/bin/sh" > /root/init_node.sh
echo "#!/bin/sh" > /root/variables.sh

# Make files executable
chmod +x /root/init_node.sh
chmod +x /root/variables.sh
