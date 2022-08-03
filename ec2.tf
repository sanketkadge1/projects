module "ec2_instance" {
  source  = "git@github.com:sanketkadge1/Terraform//Modules/ec2?ref=AWS"
  
  name = "COP test"

  ami                    = "ami-05803413c51f242b7"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg_jumpserver"] 
  key_name               = "kpCAIT"
  subnet_id              = "subnet-be7f88c4"
  availability_zone      = "us-east-2b"
  
  tags = {
  Terraform   = "true"
  Environment = "dev"
  }
}
