data "aws_caller_identity" "current" {
  provider = aws.network_hub_us
}

data "aws_region" "current" {
  provider = aws.network_hub_us
}