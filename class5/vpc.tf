resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
}


resource "aws_subnet" "main1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "main2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"
}

resource "aws_subnet" "main3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.3.0/24"
}