# web-server-1
module "SA_REWEB_AZ1" {
  source               = "./module/aws-ec2-instance"
  ami                  = "ami-04505e74c0741db8d"
  availability_zone    = "us-east-1a"
  instance_type        = "c4.xlarge"
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
    "3389" = ["10.30.205.0/24"]
    "80"   = ["10.30.205.0/24"]
    "443"  = ["10.30.205.0/24"]
  }

}

