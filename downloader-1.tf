# downloader-1
module "downloader-az1" {
  source               = "./module/aws-ec2-instance"
  ami                  = "ami-04505e74c0741db8d"
  availability_zone    = "us-east-1a"
  instance_type        = "c4.xlarge"
  key_name             = "key"
  subnet_id            = "subnet-0a3f2b582374a501d"
  vpc_id               = data.aws_vpc.vpc_id.id
  security_group_name  = "PMP-SG-Stock-WCAPP-az1"

  additional_tags = {
    "Application" = "PMP"
    "Module"      = "REAPP"
    "Name"        = "AW-SE1APP01"
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
