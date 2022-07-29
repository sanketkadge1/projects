module "ec2_instance" {
  source  = "git@github.com:sanketkadge1/Terraform//Modules/ec2?ref=AWS"
  
  name = "COP test"

  ami                    = "ami-05803413c51f242b7"
  instance_type          = "t2.micro"
  # key_name               = "user1"
  # monitoring             = true
  # vpc_security_group_ids = ["sg-12345678"]
  # subnet_id              = "subnet-eddcdzz4"

  tags = {
  Terraform   = "true"
  Environment = "dev"
  }
}
