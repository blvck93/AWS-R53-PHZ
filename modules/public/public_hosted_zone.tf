resource "aws_route53_zone" "public" {
  provider = aws.target
  #checkov:skip=CKV2_AWS_38: Finding is not valid and should be suppressed. This is a private hosted zone. DNSSEC should be enabled on all public hosted zones. 
  #checkov:skip=CKV2_AWS_39: Finding is not valid and should be suppressed. This is a private hosted zone. Domain Name System (DNS) query logging should be enabled on all public hosted zones.   
  name = var.phz_name
  vpc {
    vpc_region = var.region
    vpc_id     = data.aws_vpcs.workload_vpc.ids[0]
  }
  lifecycle {
    ignore_changes = [vpc]
  }

}

