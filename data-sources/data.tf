data "aws_ami" "joindevops" {
    owners           = ["973714476881"]
    most_recent      = true

    filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "myami" {
  instance_id = "i-08df3be9c6ecc9622"
}

output "myami_info" {
    value = data.aws_instance.myami.public_ip
}