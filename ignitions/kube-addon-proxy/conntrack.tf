data "ignition_file" "module_ip_conf" {
  filesystem = "root"
  mode       = 420
  path       = "/etc/modules-load.d/ip.conf"

  content {
    content = "ip_conntrack"
  }
}

data "ignition_file" "sysctl_ip_conf" {
  filesystem = "root"
  mode       = 420
  path       = "/etc/sysctl.d/ip.conf"

  content {
    content = "net.netfilter.ip_conntrack_tcp_be_liberal=1"
  }
} 