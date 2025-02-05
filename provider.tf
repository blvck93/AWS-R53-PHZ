terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.48.0"
    }
  }
}


provider "aws" {
  alias  = "network_hub_us"
  region = var.us_region
  default_tags {
    tags = merge(var.tags, var.default_tags)
  }
}