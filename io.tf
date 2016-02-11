provider "aws" { region = "${ var.aws.region }" }

# variables
variable "cidr" {
  default = {
    vpc = "10.0.0.0/16"
  }
}
variable "etcd-ips" { default = "10.0.0.10,10.0.0.11,10.0.0.12" }
variable "instance-type" {
  default = {
    bastion = "t2.nano"
  }
}
variable "internal-tld" { default = "k8s" }
variable "name" { default = "testing" }

# outputs
output "azs" { value = "${ var.aws.azs }" }
output "bastion-ip" { value = "${ module.bastion.ip }" }
output "subnet-ids" { value = "${ module.vpc.subnet-ids }" }