locals {
  email_secrets  = jsondecode(data.aws_secretsmanager_secret_version.aft_account_secrets_versions.secret_string)
  sso_user_email = local.email_secrets["sso_user_email"]
  accounts = {
    ##################################################################
    # SECURITY OU
    ##################################################################
    security = {
      name              = "Security Account"
      organization_unit = "Security"
      email             = local.email_secrets["security_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Security"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "SECURITY"
      }
      customizations_name = "SECURITY"
    }
    logging = {
      name              = "Logging Account"
      organization_unit = "Security"
      email             = local.email_secrets["logging_account_email"]
      sso_email         = local.sso_user_email
      first_name        = "Logging"
      last_name         = "User"
      tags = {
        "ABC:Environment" = "LOGGING"
      }
      customizations_name = "LOGGING"
    }



    ##################################################################
    # OPS OU
    ##################################################################

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

    ##################################################################
    # PRODUCT OU
    ##################################################################

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
