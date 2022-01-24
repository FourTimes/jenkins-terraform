module "downloader-az2" {
  source               = "../module/aws-ec2-instance"
  ami                  = "ami-06acd7cbe65da0fde"
  availability_zone    = "us-east-1b"
  instance_type        = "c4.xlarge"
  key_name             = "key"
  subnet_id            = "subnet-00e3ebcc52c45a7e6"
  vpc_id               = data.aws_vpc.vpc_id.id
  security_group_name  = "PMP-SG-Stock-WCAPP-az2"
  additional_tags = {
    "Application" = "PMP"
    "Module"      = "REAPP"
    "Name"        = "AW-SE1APP02"
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
