terraform {
  required_providers {
    mgc = {
      source  = "MagaluCloud/mgc"
      version = "~> 0.37.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 4.7.2"
    }
  }
  required_version = ">= 1.5.0"
}