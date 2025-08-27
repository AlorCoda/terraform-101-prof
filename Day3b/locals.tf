locals {
  name_prefix = format("%s+%s", var.name_prefix, "tf")
  short_region = "usw2"
  resource_name = format("%s:%s", local.name_prefix, local.short_region)
}
