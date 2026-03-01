terraform {
  required_providers {
    mgc = {
      source  = "MagaluCloud/mgc"
      version = ">= 0.45.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7.2"
    }
  }
  required_version = ">= 1.11.1"
}
