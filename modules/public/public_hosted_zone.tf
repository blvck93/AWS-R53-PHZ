resource "aws_route53_zone" "public" {
  name = var.phz_name
  vpc {
    vpc_region = var.region
    vpc_id     = data.aws_vpcs.workload_vpc.ids[0]
  }
  lifecycle {
    ignore_changes = [vpc]
  }

}

