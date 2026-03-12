###vm platform-web vars
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
###vm platform-db vars
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
