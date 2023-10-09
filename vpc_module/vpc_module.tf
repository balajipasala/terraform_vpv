module vpc{
    source ="../vpc_1.2_variable"
    vpc_region ="us-west-1"
    vpc_cidr_block = "192.160.0.0/16"
    pub_subnet_cidr_block = "192.160.1.0/24"
    pub_subnet_availability_zone="us-west-1a"
    private_subnet_cidr_block = "192.160.2.0/24"    
    private_subnet_availability_zone="us-west-1b"

}