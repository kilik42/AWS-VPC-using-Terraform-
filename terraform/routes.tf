resource "aws_route_table" "private_route"{
    vpc_id = aws_vpc.main.id

    route{
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat.id

    }

    tags = {
      Name = "${locals.env}-private"
    }
}

resource "aws_route_table" "public"{
    vpc_id = aws_vpc.main.id

    route{
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_internet_gateway.nat.id

    }
    
    tags={
       Name = "${locals.env}-private" 
    }

}