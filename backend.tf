terraform {
  backend "s3" {
    bucket = "blvck93-aws-r53-phz-logs"
    key    = "terraform/state"
    region = "us-east-1"  # Specify your AWS region
  }
}