
data "aws_ami" "joindevops" {
  owners      = ["self"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice*"]  # wildcard allows suffix
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
