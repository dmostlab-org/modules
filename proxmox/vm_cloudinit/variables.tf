########vm-name and setup info###############
variable "vm_name" {
  type = string
}

variable "proxmox_host" {
  type = string
}

variable "template_name" {
  type = string
}

variable "ci_user" {
  description = "user to create during cloud init setup"
}

variable "ci_ssh_key" {
  description = "public key for ssh imported via cloud init"
  type = string
}

###########Hardware Specs###########

variable "os_type" {
  description = "os/bios type"
  type = string
  default = "l26"
}

variable "vm_cores" {
  type = number
  default = 4
}

variable "vm_sockets" {
  type = number
  default = 1
}

variable "vm_memory" {
  type = number
  default = 4096
}


############network config#####################

variable "vm_network_model" {
    description = "network device type"
    type = string
    default = "virtio"
  
}

variable "vm_network_bridge" {
  description = "network bridge"
  type = string
  default = "vmbr0"
}

variable "vm_ip_block" {
  description = "IP space in xxx.xxx.xxx.xxx/xx format"
}

variable "vm_ip_gateway" {
    description = "gateway ip address"
  
}

############storage/disk info#################

variable "vm_storgesize" {
    description = "strorage disk size example: 10G"
    type = string
    default = "10G"
  
}

variable "vm_storagelocation" {
  descripdescription = "where to create the disk" 
  type = string
  defaultdefault = "lvm-thin" 
}