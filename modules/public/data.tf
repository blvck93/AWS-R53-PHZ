data "aws_vpcs" "central_endpoint_vpc" {
  provider = aws.network_hub
  filter {
    name   = "tag:Name"
    values = ["test-vpc"]
  }
}
