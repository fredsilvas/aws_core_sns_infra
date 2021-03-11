##############################################################################################
### BACKEND
terraform {
  backend "s3" {
    bucket  = "terraform-state-files-fredsilvas"
    key     = "core/sns/sns-infra/terraform-sns-infra.tfstate"
    region  = "sa-east-1"
    encrypt = "true"
  }
}