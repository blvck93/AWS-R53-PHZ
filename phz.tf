module "public_blvck_ovh" {
  source = "./modules/public"
  providers = {
    aws.network_hub = aws.network_hub_eus
  }
#  region   = var.target.tooling-nonprod.region
  phz_name = "blvck.ovh"
}