variable "aws_region" {
  description = "The AWS region to create things in."
  default = "us-west-2"
}

# ubuntu-trusty-14.04 (x64)
variable "aws_amis" {
  default = {
    "us-east-1" = "ami-5f709f34"
    "us-west-2" = "ami-7f675e4f"
  }
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "github_rsa_key"
}

variable "key_path" {
  description = "key location"
  default = "~/.ssh/github_rsa_key.pub"
}

variable "availability_zones" {
  default = "us-west-2"
  description = "List of availability zones, use AWS CLI to find your "
}

variable "instance_type" {
  default = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default = "1"
}
