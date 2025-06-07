resource "aws_eip" "nat" {
    domain = "vpc"

    tags = {
        Name ="${locals.env}-nat"
    }

  
}

data "aws_nat_gateway" "nat_gatway" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public_zone1.id

  tags = {
    Name = "${locals.env}-nat"
  }
}