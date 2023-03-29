module "security-group_http-80" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "4.17.1"

  name        = "web-server-sg"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id        = module.vpc.vpc_id
  ingress_rules = ["https-443-tcp", "ssh-tcp"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  tags = {
    env     = "dev"
    project = "my-task"
    owner   = "denis"
  }
}
