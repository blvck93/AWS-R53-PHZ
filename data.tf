data "aws_caller_identity" "current" {
  provider = aws.network_hub_eu
}

data "aws_region" "current" {
  provider = aws.network_hub_eu
}