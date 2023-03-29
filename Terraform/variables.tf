variable "aws_region" {
  default     = "eu-central-1"
  description = "aws region where our resources going to create choose"
  #replace the region as suits for your requirement
}
variable "cidr" {
  default = "192.168.0.0/16"
}
variable "azs" {
  default = ["eu-central-1a"]
}
variable "private_subnets" {
  default = ["192.168.1.0/24"]
}
variable "public_subnets" {
  default = ["192.168.4.0/24"]
}