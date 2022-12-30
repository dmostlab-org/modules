########vm-name and setup info###############
variable "vm_name" {
  type = string
}

variable "vm_id" {
  description = "The ID of the virtual machine"
}

variable "target_node" {
  type = string
  description = "Destination Host for VM"
}

variable "vm_description" {
  type        = string
  description = "The description of the virtual machine"
  default     = "Terraform Managed"
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

variable "ci_password" {
  description = "cloud init password"
  default = ""
}

variable "vm_autostart" {
  type        = bool
  description = "Whether to automatically start the virtual machine when the Proxmox server is restarted"
  default     = false
}

variable "vm_tags" {
  type = string
  description = "Metadata tag for VM"
  default = ""
}

###########Hardware Specs###########

variable "os_type" {
  description = "os/bios type"
  type = string
  default = "l26"
}

variable "vm_cores" {
  type = number
  default = 2
}

variable "vm_sockets" {
  type = number
  default = 1
}

variable "vm_memory" {
  type = number
  default = 2048
}

variable "vm_scaling" {
  type        = bool
  description = "Whether to enable scaling for the virtual machine"
  default     = true
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
  description = "where to create the disk" 
  type = string
  default = "local-lvm" 
}