module "dev" {
  source  = "guilhermesgit/cloud9/aws"
  version = "0.1.2"

  instance_type   = "t2.micro"
  name            = "Dev"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Desenvolvimento"
  connection_type = "CONNECT_SSM"
  accountid = "111111111111"
  accountname = "devuser"
}


/*
Utilizando terraform import use o cli
% terraform import aws_ebs_volume.cloud9 vol-12345678912345678
*/

/*

#tfsec:ignore:aws-ec2-volume-encryption-customer-key
#tfsec:ignore:aws-ec2-enable-volume-encryption

resource "aws_ebs_volume" "cloud9" {
  availability_zone = "us-east-1f"
  size              = 12
  tags = {
    Name = "Cloud9"
  }
}

*/
