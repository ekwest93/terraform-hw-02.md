###cloud vars
variable "cloud_id" {
  type        = string
}
variable "folder_id" {
  type        = string
}
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
variable "vpc_name" {
  type        = string
  default     = "develop"
}
###ssh vars
variable "vms_ssh_public_root_key" {
  type        = string
}
### VM resources
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}
### VM metadata
variable "metadata" {
  type        = map(string)
  default = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }
}
### VM platform vars
# variable "vm_web_name" {
#   type    = string
#   default = "netology-develop-platform-web"
# }
variable "vm_web_platform" {
  type    = string
  default = "standard-v1"
}
# variable "vm_web_cores" {
#   type    = number
#   default = 2
# }
# variable "vm_web_memory" {
#   type    = number
#   default = 1
# }
# variable "vm_web_core_fraction" {
#   type    = number
#   default = 5
# }
variable "vm_web_policy_preemptible" {
  type    = bool
  default = true
}
variable "vm_web_network_nat" {
  type    = bool
  default = true
}
# variable "vm_db_name" {
#   type    = string
#   default = "netology-develop-platform-db"
# }
variable "vm_db_platform" {
  type    = string
  default = "standard-v1"
}
# variable "vm_db_cores" {
#   type    = number
#   default = 2
# }
# variable "vm_db_memory" {
#   type    = number
#   default = 2
# }
# variable "vm_db_core_fraction" {
#   type    = number
#   default = 20
# }
variable "vm_db_policy_preemptible" {
  type    = bool
  default = true
}
variable "vm_db_network_nat" {
  type    = bool
  default = true
}
