terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  shared_config_files  = ["/opt/.aws/config"]
  shared_credentials_files = ["/opt/.aws/credentials"]
}

module "ec2_spot_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "spot-instance"

  create_spot_instance = true
  spot_price           = "0.60"
  spot_type            = "persistent"

  instance_type          = "t3.micro"
  key_name               = "book-library-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-02104a3611f36db90"]
  subnet_id              = "subnet-0b512cbe7e6c6e9d6"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# generate inventory file for Ansible
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/hosts.tpl",
    {
      kafka_processors = aws_instance.kafka_processor.*.public_ip
      test_clients = aws_instance.test_client.*.public_ip
    }
  )
  filename = "../ansible/inventory/hosts.cfg"
}