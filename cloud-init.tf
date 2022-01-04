data "local_file" "cloudinit" {
    filename = "${path.module}/config-mgmt/cloud-init.conf"
}