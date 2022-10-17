
resource "proxmox_vm_qemu" "ci_vm" {
  name = var.vm_name 
  target_node = var.proxmox_host
  clone = var.template_name
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
    bridge = "vmbr0"
  }

 disk {
    
    # set disk size here. leave it small for testing because expanding the disk takes time.
    size = var.vm_storgesize
    type = "scsi"
    storage = var.vm_storagelocation
    ssd = 1
  }

  # not sure exactly what this is for. presumably something about MAC addresses and ignore network changes during the life of the VM
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  

  ipconfig0 = "ip=${var.vm_ip_block},gw=${var.vm_ip_gateway}"
  
}


