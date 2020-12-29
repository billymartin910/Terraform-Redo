output "public ip" {
    value = "${aws_instance.web3.public_ip}"
}

output "private dns" {
    value = "${aws_instance.web3.private_dns}"
}

output "keyname" {
    value = "${aws_instance.web3.key_name}"
}

output "az" {
    value = "${aws_instance.web3.availability_zone}"
}