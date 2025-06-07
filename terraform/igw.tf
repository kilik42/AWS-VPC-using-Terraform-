data "aws_internet_gateway" "igw" {
  filter {
    name   = "attachment.vpc-id"
    values = [locals.vpc_id]
  }
}