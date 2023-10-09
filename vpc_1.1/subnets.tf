resource "aws_subnet" "ts_pub_subnet" {
  vpc_id     = aws_vpc.ts_vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone="us-east-1a"
  tags = {
    Name = "ts_public_subnet"
  }
}
resource "aws_subnet" "ts_private_subnet" {
  vpc_id     = aws_vpc.ts_vpc.id
  cidr_block = "192.168.2.0/24"
   availability_zone="us-east-1b"
  tags = {
    Name = "ts_private_subnet"
  }
}
