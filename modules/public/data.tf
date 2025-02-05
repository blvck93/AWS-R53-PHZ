data "aws_vpc" "central_endpoint_vpc" {
  provider = aws.network_hub
  filter {
    name   = "tag:Name"
    values = ["test-vpc"]
  }
}
