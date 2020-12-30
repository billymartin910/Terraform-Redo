resource "aws_instance" "ubuntu" {
  ami           = "${data.aws_ami.ubuntu.id}"
  availability_zone = "${data.aws_availability_zones.availabale.names[3]}"
  instance_type = "t3.micro"
  key_name = "${aws_key_pair.deployed.key_name}"
  associate_public_ip_address = true

  provisioner "remote-exec" {
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("~/.ssh/id_rsa")}"
    host     = "${aws_instance.ubuntu.public_ip}"
  }
    inline = [
      "sudo apt-get install apache2 -y",
      "sudo systemctl start apache2",
    ]
  }

  provisioner "file" {
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("~/.ssh/id_rsa")}"
    host     = "${aws_instance.ubuntu.public_ip}"
  }
    source      = "README.md"
    destination = "/tmp/README.md"
  }
}