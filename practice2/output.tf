output "instance id" {
value = "${aws_instance.web.id}"
}
 
output "keypair" {
    value = "${aws_instance.web.key_name}"
}

output "PIP" {
    value = "${aws_instance.web.public_ip}"
}

output "Route Name" {
    value = "${aws_route53_record.www.name}"
}

output "my message" {
    value = "Important Message Example"
}