
/* data "aws_ami" "joindevops" {
  owners           = ["341841617158"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
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
 */


data "aws_ami" "joindevops" {
  owners      = ["341841617158"]   # your AWS account ID
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice*"]  # wildcard matches any suffix
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