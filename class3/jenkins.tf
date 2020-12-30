# resource "aws_instance" "jenkins" {
#   ami           = "${data.aws_ami.ubuntu.id}"
#   availability_zone = "${data.aws_availability_zones.availabale.names[3]}"
#   instance_type = "t3.micro"
#   key_name = "${aws_key_pair.deployed.key_name}"
#   associate_public_ip_address = "true"

#   provisioner "remote-exec" {
#   connection {
#     type     = "ssh"
#     user     = "ubuntu"
#     private_key = "${file("~/.ssh/id_rsa")}"
#     host     = "${aws_instance.jenkins.public.ip}"
#   }
#     inline = [
#     "sudo wget -O /etc/yum.repos.d/jenkins.repo / https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#     "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
#     "sudo dnf upgrade",
#     "sudo dnf install jenkins java-devel",
#     ]
#   }
# }