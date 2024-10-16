module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ugmw75ln5@mozmail.com"
    AccountName               = "aft-sandbox2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "blaise.david@vinci-energies.net"
    SSOUserFirstName          = "Blaise"
    SSOUserLastName           = "David"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
