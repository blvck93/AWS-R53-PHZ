data "aws_vpc" "central_endpoint_vpc" {
  provider = aws.network_hub
  filter {
    name   = "tag:Name"
    values = ["test-vpc"]
  }
}

data "aws_vpcs" "workload_vpc" {
  provider = aws.target
  filter {
     name   = "tag:Name"
     values = ["test-vpc"]
  }
}
