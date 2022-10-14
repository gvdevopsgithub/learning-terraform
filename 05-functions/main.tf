#variable "alist" {
#  default = [1, 2]
#}
#
#variable "amap" {
#  default = {
#    a = 1
#    b = 2
#  }
#}
#
#output "alist_length" {
#  value = length(var.alist)
#}
#
#output "amap_length" {
#  value = length(var.amap)
#}


variable "alist" {
  default = [1, 2]
}

output "alist_length" {
  value = length(var.alist)
}

variable "amap" {
  default = {
    set = {
      a = 2
      b = 3
    }
  }
}

output "amap_length" {
  value = length(var.amap)
}
