# Double-check and make sure your entry is correct.
# Make sure the AccountName does not contain space and special character.
# The supported character are `[a-zA-Z0-9][a-zA-Z0-9._-]
variable "ops_account_name" {
  description = "Name of the new account"
  type        = string
  default     = "Ops Account"
}

variable "ops_organizational_unit" {
  description = "The name of the OU where the new account will be created. If a Sub Organization it should be followed by ({{OU ID}}) eg `Sandbox (ou-1234567890abcdef0)`"
  type        = string
  default     = "Ops"
}

variable "ops_account_user_firstName" {
  description = "SSO user first name for the new account"
  type        = string
  default     = "Ops"
}

variable "ops_account_user_lastName" {
  description = "SSO user last name for the new account"
  type        = string
  default     = "User"
}
