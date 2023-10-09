resource "aws_internet_gateway" "ts_gw" {
  vpc_id = aws_vpc.ts_vpc.id

  tags = {
    Name = "ts_igw"
  }
}