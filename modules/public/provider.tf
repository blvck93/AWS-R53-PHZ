terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.48.0"
      configuration_aliases = [aws.network_hub, aws.target]
    }
  }
}