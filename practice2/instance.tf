resource "aws_instance" "web3" {
  ami           = "ami-099e921e69356cf89"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployed.key_name}"
  user_data = "${file("userdata_file.sh")}"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  vpc_security_group_ids = [ 
    "${aws_security_group.practice2.id}"
  ]

  tags = {
    Name = "Ubuntu"
    Environment = "Dev"
  }
}