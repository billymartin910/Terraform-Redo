resource "aws_instance" "jenkins" {
  ami           = "${data.aws_ami.centos.id}"
  availability_zone = "${data.aws_availability_zones.availabale.names[3]}"
  instance_type = "t3.micro"
  key_name = "${aws_key_pair.jenkins.key_name}"
  associate_public_ip_address = "true"
  vpc_security_group_ids = [ "${aws_security_group.practice2.id}"]
  availability_zone = "${data.aws_availability_zones.availabale.names[2]}"
  provisioner "remote-exec" {
  connection {
    type     = "ssh"
    user     = "centos"
    private_key = "${file("~/.ssh/id_rsa")}"
    host     = "${aws_instance.jenkins.public_ip}"
  }
    inline = [
      "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade -y",
      "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
      "sudo systemctl daemon-reload",
    ]
  }
}