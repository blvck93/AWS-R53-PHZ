variable "region" {
  type    = string
  default = "us-east-1"
}

variable "eu_region" {
  type    = string
  default = "eu-west-2"
}

variable "us_region" {
  type    = string
  default = "us-east-1"
}

variable "eu_phz_name" {
  type    = list(string)
  default = ["eq.internal", "uk.eq.internal"]
}

variable "us_phz_name" {
  type    = list(string)
  default = ["eq.internal", "us.eq.internal"]
}

variable "role_arn" {
  type        = string
  description = "role arn for network hub account"
}

variable "target" {
  description = "object for subdomains delegated to accounts"
}

variable "tags" {
  description = "tags"
}

variable "default_tags" {
  description = "A map where the key is Environment and the value is the environment. Should be read from the environment and not passed directly."
  type        = map(any)
  default     = null
}

variable "forward_domain" {
  type        = list(string)
  description = "list of domains"
}

variable "forward_target_ips_us" {
  type = list(string)
}

variable "forward_target_ips_eu" {
  type = list(string)
}

variable "forward_domain_resourceone" {
  type        = list(string)
  description = "resourceone hosted in AWS"
}

variable "forward_domain_sztest" {
  type        = list(string)
  description = "sztest hosted in AWS"
}

variable "forward_target_ips_resourceone_eu" {
  type        = list(string)
  description = "Target IP for DNS hosted in AWS"
}

variable "forward_target_ips_sztest_eu" {
  type        = list(string)
  description = "Target IP for DNS hosted in AWS"
}

variable "phz_forward_domain_eu" {
  type        = list(string)
  description = "list of domains"
}
variable "phz_forward_domain_us" {
  type        = list(string)
  description = "list of domains"
}

variable "phz_forward_domain_eks_auth_eu" {
  type        = list(string)
  description = "list of domains"
}

variable "phz_forward_domain_eks_auth_us" {
  type        = list(string)
  description = "list of domains"
}

variable "phz_forward_domain" {
  type        = list(string)
  description = "list of domains"
}

variable "phz_forward_target_ips_us" {
  type = list(string)
}

variable "phz_forward_target_ips_eu" {
  type = list(string)
}

variable "uk_eq_internal_record" {

}

variable "us_eq_internal_record" {

}

variable "networkaccount_vpc" {

}

variable "domain_lists_eu" {
  description = "A map of domain lists with their attributes"
  type = map(object({
    domain_list_name  = string
    priority          = number
    managed_domain_id = string
  }))
  default = {
    list1 = {
      domain_list_name  = "AWSManagedDomainsAggregateThreatList"
      priority          = 1
      managed_domain_id = "rslvr-fdl-4e96d4ce77f466b"
    },
    list2 = {
      domain_list_name  = "AWSManagedDomainsAmazonGuardDutyThreatList"
      priority          = 2
      managed_domain_id = "rslvr-fdl-876a86d96f294739"
    }
    list3 = {
      domain_list_name  = "AWSManagedDomainsBotnetCommandandControl"
      priority          = 3
      managed_domain_id = "rslvr-fdl-3268f74d91fe418f"
    },
    list4 = {
      domain_list_name  = "AWSManagedDomainsMalwareDomainList"
      priority          = 4
      managed_domain_id = "rslvr-fdl-4fc4edfc63854751"
    },
  }
}

variable "domain_lists_us" {
  description = "A map of domain lists with their attributes"
  type = map(object({
    domain_list_name  = string
    priority          = number
    managed_domain_id = string
  }))
  default = {
    list1 = {
      domain_list_name  = "AWSManagedDomainsAggregateThreatList"
      priority          = 1
      managed_domain_id = "rslvr-fdl-15f4860b1ad54ead"
    },
    list2 = {
      domain_list_name  = "AWSManagedDomainsAmazonGuardDutyThreatList"
      priority          = 2
      managed_domain_id = "rslvr-fdl-984dae9d8bac4e2b"
    },
    list3 = {
      domain_list_name  = "AWSManagedDomainsBotnetCommandandControl"
      priority          = 3
      managed_domain_id = "rslvr-fdl-aa970e9eb1ca4777"
    },
    list4 = {
      domain_list_name  = "AWSManagedDomainsMalwareDomainList"
      priority          = 4
      managed_domain_id = "rslvr-fdl-2c46f2ecbfec4dcc"
    },
  }
}

variable "network_account_id" {
  type    = string
  default = "804833965518"
}

variable "kms_key_deletion" {
  type    = number
  default = 30
}

variable "shield_accounts" {
  type    = set(string)
  default = []
}

variable "log_archive_account" {
  type    = string
  default = "737184837321"
}

variable "s3_bucket_arn" {
  type    = string
  default = "arn:aws:s3:::aws-accelerator-central-logs-737184837321-eu-west-2"
}

variable "region_short_eu" {
  type    = string
  default = "eu"
}

variable "region_short_us" {
  type    = string
  default = "us"
}

variable "bucket_arn" {
  type    = string
  default = "arn:aws:s3:::blvck93-aws-r53-phz-logs/" ### changed 
}

variable "domain_whitelist" {
  type    = list(string)
  default = []
}

variable "domain_blacklist" {
  type    = list(string)
  default = ["jaloch.pl"]
}

# variable "eq_internal_record_euwest2" {
#   description = "eq_internal_record_euwest2"
# 
# }
# 
# variable "eq_internal_record_useast1" {
  description = "eq_internal_record_useast1"
# }
# 
# variable "eks_auth_record_euwest2" {
  description = "eks_auth_record_euwest2"
# }
