# TP3-LOG8430-Oscar


## Environment setup:

The ideal setup to use the script is:

- Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
- 64-bit (x86)
- Instant type : t2.large 
  - 8GB of RAM
  - 2+ vCPUs
- Configuration storage : 1x 30 GiB gp2


Afterwards, you can make an SSH connection to this machine before taking the next actions.


## Configure machine
    git clone https://github.com/phbrub/TP3-LOG8430-Oscar.git
    
    cd TP3-LOG8430-Oscar
    
    chmod +x docker_setup.sh mongo_setup.sh hyperledger_fabric_setup.sh
    
    ./docker_setup.sh
    
    ./mongo_setup.sh

    ./hyperledger_fabric_setup.sh

  #### Notes
  - The machine will reboot after executing .docker_setup.sh. Please note that it may take some time before the SSH connection becomes available again.
  - Prior to running mongo_setup.sh, make sure to navigate back into the THP3-LOG8430-Oscar repository.
