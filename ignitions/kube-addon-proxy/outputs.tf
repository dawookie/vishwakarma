output "systemd_units" {
  value = []
}

output "files" {
  value = [
    "${data.ignition_file.kube_proxy_yaml.id}",
    "${data.ignition_file.module_ip_conf.id}",
    "${data.ignition_file.sysctl_ip_conf.id}"
  ]
}
