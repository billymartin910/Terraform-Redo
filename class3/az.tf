data "aws_availability_zones" "availabale" {
    state = "available"
}

output "az" {
    value = "${data.aws_availability_zones.availabale.names}"
}