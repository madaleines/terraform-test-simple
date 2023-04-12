terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws.backup,
        aws.prod
      ]
    }
  }
}

resource "null_resource" "test" {}

variable "TFC_PROJECT_NAME" {}

output "project_name_test" {
  value = var.TFC_PROJECT_NAME
}
