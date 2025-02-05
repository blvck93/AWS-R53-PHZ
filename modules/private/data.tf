data "aws_vpc" "central_endpoint_vpc" {
  provider = aws.network_hub
  filter {
    name   = "tag:Name"
    values = ["vpc-network-endpoints-${var.region}"]
  }
}

data "aws_vpcs" "workload_vpc" {
  provider = aws.target
  #filter {
  #    name   = "tag:Accelerator"
  #    values = ["AWSAccelerator"]
}
