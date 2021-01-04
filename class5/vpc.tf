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


resource "aws_subnet" "main101" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.101.0/24"
}

resource "aws_subnet" "main102" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.102.0/24"
}

resource "aws_subnet" "main103" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.103.0/24"
}