output "web_info" {
  value = {
    external_ip   = yandex_compute_instance.web.network_interface[0].nat_ip_address
    instance_name = yandex_compute_instance.web.name
    fqdn          = yandex_compute_instance.web.fqdn
  }
}
output "db_info" {
  value = {
    external_ip   = yandex_compute_instance.db.network_interface[0].nat_ip_address
    instance_name = yandex_compute_instance.db.name
    fqdn          = yandex_compute_instance.db.fqdn
  }
}
