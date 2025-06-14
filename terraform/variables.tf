variable "account_email" {
    description = "Email address for the new account"
    type        = string
    default = "onoureldin+aftsandbox@gmail.com"
}

# Double-check and make sure your entry is correct. 
# Make sure the AccountName does not contain space and special character. 
# The supported character are `[a-zA-Z0-9][a-zA-Z0-9._-]
variable "account_name" {
    description = "Name of the new account"
    type        = string
    default     = "AFTSandboxAccount"
}

variable "managed_organizational_unit" {
    description = "The name of the OU where the new account will be created"
    type        = string
    default     = "usermanagement"
}

variable "sso_user_email" {
    description = "SSO user email for the new account"
    type        = string
    default     = "onoureldin@gmail.com"
}

variable "sso_user_firstName" {
    description = "SSO user first name for the new account"
    type        = string
    default     = "Omar"
}

variable "sso_user_lastName" {
    description = "SSO user last name for the new account"
    type        = string
    default     = "Noureldin"
}