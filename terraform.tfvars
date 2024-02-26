#virginia_cidr = "10.10.0.0/16"
# public_subnet  = "10.10.0.0/24"
# private_subnet = "10.10.1.0/24"

#subnets = ["10.10.0.0/24", "10.10.1.0/24"]

#tags = {
#  "env"         = "dev"
#  "owner"       = "Nazareno"
#  "cloud"       = "AWS"
#  "IAC"         = "Terraform"
#  "IAC_Version" = "1.3.6"
#}

sg_ingress_cidr = "0.0.0.0/0"

enable_monitoring = 0

ingress_port_list = [22,80,433]