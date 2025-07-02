locals {
  email_secrets  = jsondecode(data.aws_secretsmanager_secret_version.aft_account_secrets_versions.secret_string)
  sso_user_email = local.email_secrets["sso_user_email"]
  accounts = {
    ops = {
      name              = "Ops Account"
      organization_unit = "Ops"
      email             = local.email_secrets["ops_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Ops"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "OPS"
      }
      customizations_name = "OPS"
    }
    production = {
      name              = "Production Account"
      organization_unit = "Product"
      email             = local.email_secrets["production_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Production"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "PROD"
      }
      customizations_name = "PRODUCTION"
    }
    development = {
      name              = "Development Account"
      organization_unit = "Product"
      email             = local.email_secrets["development_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Development"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "DEVELOPMENT"
      }
      customizations_name = "DEVELOPMENT"
    }
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
    }

  }
}
