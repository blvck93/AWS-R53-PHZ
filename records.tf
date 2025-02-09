data "aws_route53_zone" "blvck.ovh" {
    provider = aws.network_hub_us
    name = "blvck.ovh"
}

resource "aws_route53_record" "blvck_ovh_a" {
  zone_id = data.aws_route53_zone.blvck.ovh.zone_id
  name    = "example.blvck.ovh"
  type    = "A"
  ttl     = "300"
  records = ["8.8.8.8"]
}

resource "aws_route53_record" "blvck_ovh_cname" {
  zone_id = data.aws_route53_zone.blvck.ovh.zone_id
  name    = "www.blvck.ovh"
  type    = "CNAME"
  ttl     = "300"
  records = ["google.com"]
}