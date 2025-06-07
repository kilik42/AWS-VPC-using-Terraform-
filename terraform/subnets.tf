
#########################privatesubnets#####################

resource "aws_subnet" "private_zone1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
  availability_zone = locals.zone1

  tags = {
     Name = "${locals.env}-private-${locals.zone1}"
     "kubernetes.io/role/internal-elb" = "1"
     "kubernetes.io/cluster/${locals.env}-${locals.eks_name}" ="owned"
 }

}

resource "aws_subnet" "private_zone2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.32.0/19"
    availability_zone = locals.zone2

    tags = {
        Name = "${locals.env}-private-${locals.zone2}"
        "kubernetes.io/role/internal-elb" = "1"
        "kubernetes.io/cluster/${locals.env}-${locals.eks_name}" ="owned"
    }

}


#########################public subnets#####################

resource "aws_subnet" "public_zone1"{
    vpc_id                 = aws_subnet.main.id

}