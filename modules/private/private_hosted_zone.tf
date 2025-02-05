resource "aws_route53_zone" "phz" {
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

resource "aws_route53_vpc_association_authorization" "phz_authorization" {
  provider = aws.target
  vpc_id   = data.aws_vpc.central_endpoint_vpc.id
  zone_id  = aws_route53_zone.phz.id
}

resource "aws_route53_zone_association" "phz_association" {
  provider = aws.network_hub
  vpc_id   = aws_route53_vpc_association_authorization.phz_authorization.vpc_id
  zone_id  = aws_route53_vpc_association_authorization.phz_authorization.zone_id
}