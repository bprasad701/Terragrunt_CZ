include "root" {
  path = find_in_parent_folders()
}

terraform {
  source  = "tfr:///terraform-aws-modules/ec2-instance/aws?version=4.0.0"
}

inputs = {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  tags = {
    Name = "Terragrunt_demo_bhanu"
  }
}

