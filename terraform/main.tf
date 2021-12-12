module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "adebayoabimbola18@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT OU"
    SSOUserEmail              = "aftclarauser@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Claranet CT Project" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Claranet AWS Team"
    change_reason       = "Test run AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
