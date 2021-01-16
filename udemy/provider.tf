# provider "aws" {
#     region = "us-east-1"
# }
# provider "aws" {
#     alias = "eu"
#     region = "eu-west-1"
# }
# resource "aws_instance" "my_instance" {
#     provider = aws.eu
#     [...]
# }
# module "mymodule" {
#     source = "./mymodule"
#     providers = {
#         aws = aws.eu
#     }
# }

