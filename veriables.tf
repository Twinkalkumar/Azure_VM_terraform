variable "rg_name" {
  default     = "rg_twinkal"
  description = "test resourcgroup"
  type        = string
}

variable "rg_location" {
  default = "eastus"
  type    = string
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Owner       = "team-dev"
    ManagedBy   = "terraform"
  }
}

variable "Environment" {
  type = map(string)
  default = {
    "subscription_id" = "7cdcf9c5-2404-41b5-900d-412c4d5c2b38"
    "client_id"       = "04c76acd-d61f-40ae-b9c9-f88879727341"
    "tenant_id"       = "1b74ac81-bf47-4073-b52a-1ea9ff63edd6"
  }
}

#variable "client_id" {
#  default = "242c76da-6bd5-459d-8a80-5ecca5a5b027"
#  type    = string
#}

#variable "client_secret" {
#  default   = var.client_secret
#  type      = string
#  sensitive = true
#}

variable "vnet_name" {
  default = "vnet_twinkal"
  type    = string
}

variable "vnet_ipaddress" {
  default = ["192.168.0.0/24"]
  type    = list(string)
}

variable "subnet_name" {
  default = "subnet1"
}

variable "address_prefix" {
  default = ["192.168.0.64/26"]
}

variable "vm_name" {
  default = "test-twinkal-vm"
}