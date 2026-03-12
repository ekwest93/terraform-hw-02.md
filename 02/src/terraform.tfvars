# Идентификаторы из yc init (используются в providers.tf)
cloud_id  = "b1gtusuaqn60dr8olfid"
folder_id = "b1grvjpek3up0eujvbn7"

# Аутентификация через сервисный аккаунт
service_account_key_file = "key.json"

# Параметры сети
vpc_name     = "develop"
default_zone = "ru-central1-a"
default_cidr = ["10.0.1.0/24"]

# Ресурсы ВМ (новая структура)
vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 5
    hdd_size      = 5
    hdd_type      = "network-hdd"
    zone          = "ru-central1-a"
    platform_id   = "standard-v1"
    preemptible   = true
    nat           = true
  }
  db = {
    cores         = 2
    memory        = 2
    core_fraction = 20
    hdd_size      = 5
    hdd_type      = "network-hdd"
    zone          = "ru-central1-b"
    platform_id   = "standard-v1"
    preemptible   = true
    nat           = true
  }
}

# Metadata (общая для всех ВМ)
#metadata = {
# serial-port-enable = "1"
#ssh-keys           = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
#}

# Переменные для формирования имени (оставляем как есть)
vm_web_name_prefix = "netology"
vm_web_env         = "develop"
vm_web_role        = "platform-web"
vm_db_name_prefix  = "netology"
vm_db_env          = "develop"
vm_db_role         = "platform-db"
