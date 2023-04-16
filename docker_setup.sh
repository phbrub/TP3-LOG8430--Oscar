#!/bin/bash

echo "Running this script will install Docker and docker-compose, and then restart the machine. SSH connection will be lost."
read -p "Do you want to continue? [Y/n] " answer

if [[ "$answer" == [Yy] || "$answer" == [Yy][Ee][Ss] ]]; then
    # Install Docker
    sudo apt-get update
    sudo apt-get install docker.io -y
    sudo usermod -aG docker ${USER}

    # Install docker-compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    # Restart the machine
    sudo reboot
else
    echo "Installation cancelled. No changes were made."
fi

# The modified script uses curl to download the latest release of docker-compose from GitHub and save it in the /usr/local/bin directory. It then sets the executable permission for the docker-compose binary file. After that, it restarts the machine.

# Note that this script installs a specific version of docker-compose (version 1.29.2 at the time of writing). If you want to install a different version, you can modify the download URL accordingly.



# #!/bin/bash
# sudo snap install docker
# sudo usermod -aG docker ${USER}
# sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# echo "Please log out of your Ubuntu machine and log back in again for the changes to take effect"