provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east1-bastion-key" {
  key_name   = "bastion-key1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7Anbh7ySSA+VUWgFHv+ZYb+2aF3ysxmgZMcLunEFv5GY9QAhxOkGGwA4kKJ7pUm3RDxNGAd1GORH9+L4VlJuHLMPonslyRg6oMlimqkEZ7XI/N0mWl9Gu6D1p4rSgn8Ys6TUPcNxi8dvgLSRGKiGvA2EITWZV44iWtx5K/oBj2PMGCvK3MbfznCGCmGfCQ7JY9KqOPMkdSxhXPjqTDgc5slPw7M950MwVATURZWA6ALFatG/RmCQ4YB733/yB76xyG1IvIjMThHNjrqvijcOePZQUKURc09nuW9Jv6hWKzjEqdTdWmV7fnmJMtL8zwY/dSsDySy8WMrSj0i3OPk5L ec2-user@Terraform-Redo"
}
