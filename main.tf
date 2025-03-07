terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.55.0"
    }
  }
}

provider "ibm" {
  region = "us-south"
  ibmcloud_api_key = var.ibmcloud_api_key
}

variable "ibmcloud_api_key" {}

resource "ibm_cloudant" "my_cloudant2" {
  name     = "my-cloudant2-instance"
  plan     = "lite"
  location = "us-south"
}
