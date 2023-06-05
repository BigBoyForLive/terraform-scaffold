variable "namespace" {
  type = string
  default = "worketyamo"
}
variable "pod_name" {
  type = string
  default = "first-pod"
}
variable "image" {
    type = string
    default = "nginx"
}