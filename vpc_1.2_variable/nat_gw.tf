resource "aws_nat_gateway" "ts_nat_gw" {
  allocation_id = aws_eip.ts_eip.id
  subnet_id     = aws_subnet.ts_pub_subnet.id

  tags = {
    Name = "TS_NAT_GW"
  }
}