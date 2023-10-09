
variable "vpc_region"{
    type =string
    default="us-east-1"
}
variable "vpc_cidr_block"{
    type =string
    default="192.165.0.0/16"
}
variable "pub_subnet_cidr_block"{
    type =string
}
variable "pub_subnet_availability_zone"{
    type =string
     default="us-east-2a"
}
variable "private_subnet_cidr_block"{
    type =string
}
variable "private_subnet_availability_zone"{
    type =string
    default="us-east-2b"
}