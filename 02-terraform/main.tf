module "dev" {
  source  = "guilhermesgit/cloud9/aws"
  version = "0.1.3"

  for_each = toset(["Dev", "DevOps"])


  instance_type   = "t2.micro"
  name            = "Cloud9-${each.key}"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Desenvolvimento"
  connection_type = "CONNECT_SSM"
  accountid       = "111111111111"
  accountname     = "devuser"
}


resource "aws_codecommit_repository" "repos" {
  for_each = toset(["humangov-infra", "human-gov-app"])

  repository_name = "TCP-${each.key}"
  description     = "The Cloud Bootcamp repo"
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
