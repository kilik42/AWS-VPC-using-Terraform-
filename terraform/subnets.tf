resource "aws_subnet" "private_zone1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
  availability_zone = locals.zone1

  tags = {
     Name = "${locals.env}-private-${locals.zone1}"
 }
}


resource "aws_subnet" "private_zone2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${locals.env}-private-${locals.zone2}"
  }
}



