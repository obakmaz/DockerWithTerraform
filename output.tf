output "IP_Address" {
    value = "${module.Container.ip_address}"
}

output "ContainerName" {
    value = "${module.Container.container_name}"
}