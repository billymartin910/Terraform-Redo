resource "aws_key_pair" "deployed" {
  key_name   = "deployed-key3"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
