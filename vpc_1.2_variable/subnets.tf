resource "aws_subnet" "ts_pub_subnet" {
  vpc_id     = aws_vpc.ts_vpc.id
  cidr_block = var.pub_subnet_cidr_block
  availability_zone=var.pub_subnet_availability_zone
  tags = {
    Name = "ts_public_subnet"
  }
}
resource "aws_subnet" "ts_private_subnet" {
  vpc_id     = aws_vpc.ts_vpc.id
  cidr_block = var.private_subnet_cidr_block
   availability_zone=var.private_subnet_availability_zone
  tags = {
    Name = "ts_private_subnet"
  }
}
