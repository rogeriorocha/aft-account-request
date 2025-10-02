locals {
  email_secrets  = jsondecode(data.aws_secretsmanager_secret_version.aft_account_secrets_versions.secret_string)
  sso_user_email = local.email_secrets["sso_user_email"]
  accounts = {
    ##################################################################
    # OPS OU
    ##################################################################



    ##################################################################
    # PRODUCT OU
    ##################################################################


    staging = {
      name              = "Staging Account"
      organization_unit = "Product"
      email             = local.email_secrets["staging_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Staging"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "STAGING"
      }
      customizations_name = "STAGING"
      alternate_contact = {
        operations = {
          "email-address" = local.email_secrets["head_of_product_ou_email"]
          "name"          = "Head of Product"
          "phone-number"  = "+11234567890"
          "title"         = "Head of Product"
        }
      }
    }
  }
}
