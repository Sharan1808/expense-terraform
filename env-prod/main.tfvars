vpc_cidr_block = "10.20.0.0/16"
env = "prod"
tags = {
  company      = "XYZ Co"
  bu_unit      = "Finance"
  project_name = "expense"
}

public_subnets =["10.20.0.0/24", "10.20.1.0/24"]
web_subnets    =["10.20.2.0/24", "10.20.3.0/24"]
app_subnets    =["10.20.4.0/24", "10.20.5.0/24"]
db_subnets     =["10.20.6.0/24", "10.20.7.0/24"]

azs                    = ["us-east-1a", "us-east-1b", "us-east-1c"]
account_id             = "314523829041"
default_vpc_id         = "vpc-0b1c8dac07bf744ed"
default_route_table_id = "rtb-04a7ce1e831944094"
default_vpc_cidr       = "172.31.0.0/16"

rds_allocated_storage  = 20
rds_engine             = "mysql"
rds_engine_version     = "5.7.44"
rds_instance_class     = "db.t3.small"

backend = {
  app_port       = 8080
  instance_count = 2
  instance_type  = "t3.micro"
}

frontend = {
  app_port       = 80
  instance_count = 1
  instance_type  = "t3.micro"
}

bastion_cidrs = ["172.31.47.211/32"]


public_alb     = {
  internal     = false
  lb_port      = 80
  type         = "public"
  component    = "frontend"
  enable_https = true
  ingress      = {
    http = { port = 80}
    https = { port = 443}
  }
}

backend_alb    = {
  internal     = true
  lb_port      = 80
  type         = "backend"
  component    = "backend"
  enable_https = false
  ingress      = {
    http = { port = 80}
  }
}

route53_zone_id = "Z08005401DQ0Y8GTTZHAT"
kms = "arn:aws:kms:us-east-1:314523829041:key/39eb2353-2925-4333-8183-df851cab701c"
certificate_arn = "arn:aws:acm:us-east-1:314523829041:certificate/b3a36466-42e2-4a4d-8a4f-54fb47bed7ad"
