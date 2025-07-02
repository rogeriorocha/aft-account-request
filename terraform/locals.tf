locals {
  email_secrets     = jsondecode(data.aws_secretsmanager_secret_version.aft_account_secrets_versions.secret_string)
  sso_user_email    = local.email_secrets["sso_user_email"]
  ops_account_email = local.email_secrets["ops_account_email"]
}
