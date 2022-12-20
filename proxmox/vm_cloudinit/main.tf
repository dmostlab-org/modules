
terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}
resource "proxmox_vm_qemu" "ci_vm" {
  name = var.vm_name
  vmid = var.vm_id 
  target_node = var.target_node
  clone = var.template_name
  description = var.vm_description
  full_clone = true
  ciuser = var.ci_user
  sshkeys = var.ci_ssh_key

# basic VM settings here. agent refers to guest agent
  agent = 1
  os_type = var.os_type
  cores = var.vm_cores
  sockets = var.vm_sockets
  cpu = "host"
  memory = var.vm_memory
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"

# if you want two NICs, just copy this whole network section and duplicate it
  network {
    model = var.vm_network_model
    bridge = var.vm_network_bridge
  }

 disk {
    
    # set disk size here. leave it small for testing because expanding the disk takes time.
    size = var.vm_storgesize
    type = "scsi"
    storage = var.vm_storagelocation
    ssd = 1
  }

 # ignore local network change
  lifecycle {
    ignore_changes = [
      network,target_node,disk
    ]
  }
  

  ipconfig0 = "ip=${var.vm_ip_block},gw=${var.vm_ip_gateway}"
  
}


