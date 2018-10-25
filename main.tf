module "ad_data_source_phx" {
  source       = "./base_modules/ad_data_source"
  tenancy_ocid = "${var.tenancy_ocid}"
}

module "virtual_network3_phx" {
  source           = "./base_modules/virtual_network"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "${var.vcn_display_name}"
  vcn_cidr_block   = "${var.vcn_cidr_block}"
  vcn_dns_label    = "${var.vcn_dns_label}"
}

module "virtual_network4_phx" {
  source           = "./base_modules/virtual_network"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "${var.vcn_display_name2}"
  vcn_cidr_block   = "${var.vcn_cidr_block2}"
  vcn_dns_label    = "${var.vcn_dns_label2}"
}


module "mgt_bld_instance" {
  // A terraform module to create Management Instances with loop count of 3
  source                = "./base_modules/win_instance"
  ad_name               = ["${module.ad_data_source_iad.ad1_name}", "${module.ad_data_source_iad.ad2_name}", "${module.ad_data_source_iad.ad3_name}"]
  compartment_ocid      = "${var.compartment_ocid}"
  loop_count            = "${var.bld_mgt_instance_count}"
  instance_display_name = "${var.bld_mgt_instance_display_names}"
  image_ocid            = "${var.mgt_image_ocid}"

  //image_ocid = "${module.images_data_source.image_ocid}"
  instance_shape         = "${var.bld_mgt_instance_shape}"
  subnet_ocid            = "${module.mgt_subnets2_iad.subnet_ocid}"
  assign_public_ip       = "${var.pub_assign_public_ip}"
  private_ip             = "${var.bld_mgt_private_ips}"
  skip_source_dest_check = false
}