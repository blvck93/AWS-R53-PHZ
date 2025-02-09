data "aws_route53_zone" "blvck_ovh" {
    provider = aws.network_hub_us
    name = "blvck.ovh"
}
