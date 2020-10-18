provider "github" {
  individual = false
  organization = "grantorchard"
}

terraform {
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "2.4.0"
    }
  }
}


module "terraform-nsx-remote-state" {
  source          = "./github_module"
  repository_name = "terraform-nsx-remote-state"
}

module "sentinel-nsx-hashibytes" {
  source          = "./github_module"
  repository_name = "sentinel-nsx-hashibytes"
}

module "terraform-vsphere-homelab" {
  source = "./github_module"
  repository_name = "terraform-vsphere-homelab"
}

module "terraform-tfe-onboarding" {
  source = "./github_module"
  repository_name = "terraform-tfe-onboarding"
}

module "terraform-vault-config" {
  source = "./github_module"
  repository_name = "terraform-vault-config"
}

module "terraform-vault-kindred" {
  source = "./github_module"
  repository_name = "terraform-vault-kindred"
  repository_private = true
}

module "terraform-vsphere-module-virtual-machine" {
  source = "./github_module"
  repository_name = "terraform-vsphere-module-virtual-machine"
}

module "terraform-vsphere-virtual-machine-vmug" {
  source = "./github_module"
  repository_name = "terraform-vsphere-virtual-machine-vmug"
}

module "packer-vsphere-base" {
  source = "./github_module"
  repository_name = "packer-vsphere-base"
}


module "terraform-vault-dynamic-policy" {
  source = "./github_module"
  repository_name = "terraform-vault-dynamic-policy"
}

module "packer-gitlab" {
  source = "./github_module"
  repository_name = "packer-gitlab"
}