module "public_blvck_ovh" {
  source = "./modules/public"
  providers = {
    aws.network_hub = aws.network_hub_us
  }
  region   = "us-east-1"
  phz_name = "blvck.ovh"
}