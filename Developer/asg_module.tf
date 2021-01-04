module "webapp" {
  source           = "../class4"
  region           = "us-east-1"
  min_size         = "1"
  max_size         = "1"
  desired_capacity = "1"
  image_owner      = "137112412989"
  security_group_names = "aws_security_group.asg-sec-group.name"
}

module "python" {
  source           = "../class4"
  region           = "us-east-1"
  min_size         = "1"
  max_size         = "1"
  desired_capacity = "1"
  image_owner      = "137112412989"
  security_group_names = "aws_security_group.asg-sec-group.name"
}

module "python-eu" {
  source           = "../class4"
  region           = "us-east-1"
  min_size         = "1"
  max_size         = "1"
  desired_capacity = "1"
  image_owner      = "137112412989"
  security_group_names = "aws_security_group.asg-sec-group.name"
}
