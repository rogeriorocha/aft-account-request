######################################################################################
# Change the placeholder {{PLACEHOLDER NAME}} with your own value.
# For example for account email, name, OU and SSO.
# Be sure to set account_customizations_name with either PRODUCTION or SANDBOX. 
# Feel free to modify other values such as tags and custom fields. 
# Then Commit. Navigate to AWS CodePipeline and observe the pipeline running. 
# You should see the pipeline completed successfully and your latest commit message.
######################################################################################

module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = var.account_email
    AccountName               = var.account_name
    ManagedOrganizationalUnit = var.managed_organizational_unit
    SSOUserEmail              = var.sso_user_email
    SSOUserFirstName          = var.sso_user_firstName
    SSOUserLastName           = var.sso_user_lastName
  }

  account_tags = {
    "ABC:Owner"       = var.account_email
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}