output "vpc_id" {
  description = "ID of project VPC"
  value       = module.vpc.vpc_id
}
output "public_subnet_ids" {
  value = module.vpc.public_subnets
}
output "private_subnet_ids" {
  value = module.vpc.private_subnets
}
output "security_group_id" {
  value = module.security-group_http-80.security_group_id
}