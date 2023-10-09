resource "aws_route_table" "ts_pub_rt" {
  vpc_id = aws_vpc.ts_vpc.id
  tags = {
    Name = "ts_pub_rt"
  }
}
resource "aws_route_table" "ts_private_rt" {
  vpc_id = aws_vpc.ts_vpc.id
  tags = {
    Name = "ts_private_rt"
  }
}

resource "aws_route_table_association" "ts_pub_rt_association" {
  subnet_id      = aws_subnet.ts_pub_subnet.id
  route_table_id = aws_route_table.ts_pub_rt.id
}

resource "aws_route_table_association" "ts_private_rt_association" {
  subnet_id      = aws_subnet.ts_private_subnet.id
  route_table_id = aws_route_table.ts_private_rt.id
}

resource "aws_route" "ts_route_ig" {
  route_table_id            = aws_route_table.ts_pub_rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id =aws_internet_gateway.ts_gw.id

}

resource "aws_route" "ts_route_nat" {
  route_table_id            = aws_route_table.ts_private_rt.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id =aws_nat_gateway.ts_nat_gw.id

}