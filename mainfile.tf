module "vm-sh01" {
  source = "git::https://code.ogdsoftware.nl/ia/terraform-module.git//module/service/rdsfarm"

  location                  = "${var.location}"
  rgr_name                  = "${var.vm-sh01["rgr_name"]}"
  sta_name                  = "${var.vm-sh01["sta_name"]}"
  vm_name                   = "${var.vm-sh01["vm_name"]}"
  vm_size                   = "${var.vm-sh01["vm_size"]}"
  vm_subnet_id              = "${data.terraform_remote_state.network.subnet_psh01_id}"
  admin_username            = "${var.vm-sh01["admin_username"]}"
  admin_password            = "${var.vm-sh01["admin_password"]}"
  dsc_registration_url      = "${var.vm-sh01["dsc_registration_url"]}"
  dsc_registration_key      = "${var.vm-sh01["dsc_registration_key"]}"
  dsc_configuration_name    = "${var.vm-sh01["dsc_configuration_name"]}"

  tag_environment = "${var.tag_environment}"
}