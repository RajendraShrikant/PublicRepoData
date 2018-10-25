variable "tenancy_ocid" {
  description = "OCID of the tenant"
}

variable "user_ocid" {
  description = "OCID of the user"
}

variable "fingerprint" {
  description = "API public key's fingerprint for OCI console authentication"
}

variable "private_key_path" {
  description = "API private key directory path"
}

variable "region" {
  default     = "us-phoenix-1"
  description = "Region to create resources, valid values are us-phoenix-1, or us-PHXburn-1"
}

variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "vcn_display_name" {
  default     = "PHX-QSS-VCN01"
  description = "Display name for virtual cloud network"
}

variable "vcn_display_name2" {
  default     = "PHX-QSS-VCN02"
  description = "Display name for virtual cloud network"
}

variable "vcn_cidr_block" {
  default     = "10.10.0.0/16"
  description = "The CIDR IP address block of the virtual cloud network"
}

variable "vcn_cidr_block2" {
  default     = "10.4.0.0/16"
  description = "The CIDR IP address block of the virtual cloud network"
}

variable "vcn_dns_label" {
  default     = "phxqssvcn01"
  description = "A DNS label for the virtual cloud network"
}

variable "vcn_dns_label2" {
  default     = "phxqssvcn02"
  description = "A DNS label for the virtual cloud network"
}

variable "igw_display_name3" {
  default     = "PHX-QSS-IGW01"
  description = "Display name for internet gateway"
}

variable "igw_display_name4" {
  default     = "PHX-QSS-IGW02"
  description = "Display name for internet gateway"
}

variable "rot_display_name5" {
  default = "PHX-QSS-ROT05"
}

variable "rot_display_name6" {
  default = "PHX-QSS-ROT06"
}

variable "rot_display_name7" {
  default = "PHX-QSS-ROT07"
}

variable "rot_display_name8" {
  default = "PHX-QSS-ROT08"
}

variable "dhcp_display_name3" {
  default     = "PHX-QSS-DHCP03"
  description = "Display name for dynamic host configuration protocol"
}

variable "remote_peering_connection_display_name" {
  default = "PHX-QSS-RMC01"
}

// variable "remote_peering_connection_of_other_region_id"{}

variable "remote_peering_connection_of_other_region_name" {
  default = "us-phoenix-1"
}

variable "nat_gateway_display_name" {
  default = "PHX-QSS-NAT01"
}

variable "nat_gateway_display_name2" {
  default = "PHX-QSS-NAT02"
}

variable "drg_attachment_display_name" {
  default = "PHX-QSS-DRG_ATT01"
}

variable "drg_display_name" {
  default = "PHX-QSS-DRG01"
}

variable "dhcp_display_name4" {
  default     = "PHX-QSS-DHCP04"
  description = "Display name for dynamic host configuration protocol"
}

variable "mgt_seclist_name" {
  default     = "QSS-MGT-SL01"
  description = "Display name for Management security list"
}

variable "mgt_seclist2_name" {
  default     = "QSS-MGT-SL02"
  description = "Display name for Management security list"
}

variable "mgt_seclist3_name" {
  default     = "QSS-MGT-SL03"
  description = "Display name for Management security list"
}

variable "mgt_seclist_name_phx" {
  default     = "QSS-MGT-SL01"
  description = "Display name for Management security list"
}

variable "mgt_seclist2_name_phx" {
  default     = "QSS-MGT-SL02"
  description = "Display name for Management security list"
}

variable "rdb_seclist_name" {
  default = "QSS-RDB-SL01"
}

variable "rdb_seclist2_name" {
  default = "QSS-RDB-SL02"
}

variable "rdb_seclist3_name" {
  default = "QSS-RDB-SL03"
}

variable "wrk_seclist_name" {
  default = "QSS-WRK-SL01"
}


variable "bld_instance_count" {
  default     = "2"
  description = "Loop count for number of instances"
}

variable "bld_instance_display_names" {
  type        = "list"
  default     = ["PHXQSSAD1BLD01", "PHXQSSAD2BLD02"]
  description = "Display names for instances"
}

variable "bld_instance_shape" {
  type        = "list"
  default     = ["VM.Standard1.1", "VM.Standard1.1"]
  description = "SKU size of the instances"
}
variable "bld_private_ips" {
  default     = ["10.4.2.2", "10.4.3.2"]
  type        = "list"
  description = "Private IP addresses of the instances"
}

variable "bld_block_volume_display_names" {
  type        = "list"
  default     = ["PHXQSSAD1BLD01-DATA01", "PHXQSSAD2BLD02-DATA01"]
  description = "Display names for block volumes"
}

variable "ucp_lb_health_checker_protocol" {
  default     = "TCP"
  description = "Health checker protocol for load balancer's backend set"
}
variable "ucp_be_port" {
  default     = "443"
  description = "Backend port"
}

variable "ucp_lb_listener_display_name" {
  default     = "https"
  description = "listeners display name"
}
variable "ucp_lb_listener_port" {
  default     = "443"
  description = "listeners port"
}

variable "ucp_lb_listener_protocol" {
  default     = "TCP"
  description = "listeners protocol"
}
variable "wrk_lb_shape" {
  default     = "400Mbps"
  description = "Load balancer SKU shape valid values are 100Mbps, 400Mbps, 8000Mbps"
}

variable "wrk_lb_display_name" {
  default     = "PHXQSSAD1WRK-ELB"
  description = "Display name for load balancers"
}

variable "wrk_lb_is_private" {
  default     = false
  description = "Is the load balancer private or not, valid values are true or false"
}
variable "wrk_lb_beset_display_name" {
  default     = "PHXQSSAD1WRK-BESET"
  description = "Display name for load balancer's backend set"
}

variable "wrk_lb_policy" {
  default     = "ROUND_ROBIN"
  description = "Policy for load balancers's backend set, valid values are ROUND_ROBIN"
}

variable "wrk_lb_health_checker_port" {
  default     = "8443"
  description = "Health checker port for load balancer's backend set"
}
variable "wrk_lb_health_checker_protocol" {
  default     = "TCP"
  description = "Health checker protocol for load balancer's backend set"
}
variable "wrk_be_port" {
  default     = "8443"
  description = "Backend port"
}

variable "wrk_lb_beset2_display_name" {
  default = "PHXQSSAD1WRK-BESET80"
}

variable "wrk_lb_policy2" {
  default = "ROUND_ROBIN"
}

variable "wrk_lb_health_checker2_port" {
  default = "8443"
}
variable "wrk_lb_health_checker2_protocol" {
  default = "TCP"
}

variable "wrk_be_port2" {
  default = "80"
}

variable "wrk_lb_listener_display_name" {
  default     = "tcp_443"
  description = "listeners display name"
}

variable "wrk_lb_listener_port" {
  default     = "443"
  description = "listeners port"
}

variable "wrk_lb_listener_protocol" {
  default     = "TCP"
  description = "listeners protocol"
}