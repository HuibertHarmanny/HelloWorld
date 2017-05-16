variable "location" {
  description = "Location of the resources."
}

variable "rgr_name" {
  description = "Name of the resource group."
}

variable "sta_name" {
  description = "Name of the storage account."
}

variable "vm_name" {
  description = "Name of the virtual machine."
}

variable "vm_size" {
  description = "Size of the virtual machine."
}

variable "vm_subnet_id" {
  description = "ID of the subnet the NIC will connect to."
}

variable "admin_username" {
  description = "Administrator username for the virtual machine."
}

variable "admin_password" {
  description = "Administrator password for the virtual machine."
}

variable "vm-rsh01" {
  description = ""

  default = {
    rgr_name               = "terraform-resourcegroup"
    sta_name               = "fundamentalsstorageaccount"
    vm_name                = "Terraform-SH01"
    vm_size                = "Standard_A2_v2"
    admin_username         = "ssd-rds"
    admin_password         = "Pa$$w0rd!!"
    dsc_registration_url   = "https://we-agentservice-prod-1.azure-automation.net/accounts/d335675f-8f12-4479-9852-45aee71bd17f"
    dsc_registration_key   = "TiLvr9qTOisbjkj/OuC9ypRVV4SZ+kNHNQejykQlxzFbjJjZe4tiQ5jNsyqb5AsWEjtdxo0JhDO2u+Kljw5x9g=="
    dsc_configuration_name = "SessionHost.localhost"
  }
}
variable "tag_environment" {
  description = "Tag describing the environment. e.g. production, staging etc."
}
variable "dsc_registration_key" {
  description = "Azure Automation DSC registration key."
}

variable "dsc_registration_url" {
  description = "Azure Automation account url."
}

variable "dsc_configuration_name" {
  description = "DSC configuration name to apply to this node."
}