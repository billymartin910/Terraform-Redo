# module "consul" {
#     source = "hasicorp/consul/aws"
#     verison = "0.1.0"
# }

# module "mymodule" {
#     source = "./mymodule" # refers to a local path 
# }

# module "mymodule" {
#     source = "github.com/in4it/terraform-modules-example-dont-use-this"
# }

# module "mymodule" {
#     source = "github.com/in4it/terraform-modules-example-dont-use-this.git"
# }

# module "mymodule-over-https" {
#     source = "https://example.com/mymodule.zip"
# }

# module "mymodule-in-s3" {
#     source = "s3:https://s3-eu-west-1.amazonaws.com/examplecorp-terraform-modules/mymodule.zip"
# }