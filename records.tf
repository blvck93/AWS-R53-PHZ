data "aws_route53_zone" "blvck_ovh" {
    provider = aws.network_hub_us
    name = "blvck.ovh"
    private_zone = false
}

resource "aws_route53_record" "blvck_ovh_a" {
  zone_id = data.aws_route53_zone.blvck_ovh.zone_id
  name    = "blvck.ovh"
  type    = "A"
  ttl     = "300"
  records = ["8.8.8.8"]
}

resource "aws_route53_record" "example_blvck_ovh_a" {
  zone_id = data.aws_route53_zone.blvck_ovh.zone_id
  name    = "example.blvck.ovh"
  type    = "CNAME"
  ttl     = "300"
  records = ["google.com"]
}

resource "aws_route53_record" "blvck_ovh_cname" {
  zone_id = data.aws_route53_zone.blvck_ovh.zone_id
  name    = "www.blvck.ovh"
  type    = "CNAME"
  ttl     = "300"
  records = ["google.com"]
}

resource "aws_route53_record" "coffee_blvck_ovh_cname" {
  zone_id = data.aws_route53_zone.blvck_ovh.zone_id
  name    = "coffee.blvck.ovh"
  type    = "CNAME"
  ttl     = "300"
  records = ["google.com"]
}

resource "aws_route53_record" "kamil_blvck_ovh_cname" {
  zone_id = data.aws_route53_zone.blvck_ovh.zone_id
  name    = "kamil.blvck.ovh"
  type    = "CNAME"
  ttl     = "300"
  records = ["google.com"]
}