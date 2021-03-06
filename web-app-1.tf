# web-server-1
module "SA_REWEB_AZ1" {
  source               = "./module/aws-ec2-instance"
  ami                  = "ami-0d43d465e2051057f"
  availability_zone    = "us-east-1a"
  instance_type        = "t2.micro"
  key_name             = "key"
  subnet_id            = "subnet-0a3f2b582374a501d"
  vpc_id               = data.aws_vpc.vpc_id.id
  security_group_name  = "PMP-SG-Stock-Webserver-az1"

  additional_tags = {
    "Application" = "PMP"
    "Module"      = "REWEB"
    "Name"        = "AW-SE1PWREWEB01"
    "Owner"       = "Myo"
    "Stack"       = "Prod"
    "Type"        = "Instance"
  }
  ingress_rule = {
    "3389" = ["0.0.0.0/0"]
    "80"    = ["0.0.0.0/0"]
    "443" = ["0.0.0.0/0"]
    "22" = ["0.0.0.0/0"]
  }

}

