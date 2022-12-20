######## Variable list with defaults ########

vm_name (string)
    - The name of the virtual machine

vm_id (string)
    - The ID of the virtual machine

proxmox_host (string)
    - The hostname or IP address of the Proxmox server

vm_description (string)
    - The description of the virtual machine
    - Default value: "Terraform Managed"

template_name (string)
    - The name of the template to use for the virtual machine

ci_user (string)
    - The user to create during cloud-init setup

ci_ssh_key (string)
    - The public key for SSH imported via cloud-init

ci_password (string)
    - The cloud-init password

vm_autostart (bool)
    - Whether to automatically start the virtual machine when the Proxmox server is restarted
    - Default value: false

os_type (string)
    - The OS/BIOS type
    - Default value: "l26"

vm_cores (number)
    - The number of cores for the virtual machine
    - Default value: 4

vm_sockets (number)
    - The number of sockets for the virtual machine
    - Default value: 1

vm_memory (number)
    - The amount of memory for the virtual machine
    - Default value: 2048

vm_scaling (bool)
    - Whether to enable scaling for the virtual machine
    - Default value: true

vm_network_model (string)
    - The network device type
    - Default value: "virtio"

vm_network_bridge (string)
    - The network bridge
    - Default value: "vmbr0"

vm_ip_block (string)
    - The IP space in xxx.xxx.xxx.xxx/xx format

vm_ip_gateway (string)
    - The gateway IP address

vm_storgesize (string)
    - The size of the storage disk
    - Default value: "10G"

vm_storagelocation (string)
    - The location where to create the disk
    - Default value: "lvm-thin"
