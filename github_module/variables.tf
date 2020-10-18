variable template_repository_owner {
  type = string
  default = "grantorchard"
}

variable template_repository_name {
  type = string
  default = "terraform-repository-template"
}

variable repository_name {
  type = string
}

variable repository_description {
  type = string
  default = ""
}

variable repository_private {
  type = bool
  default = false
}

variable has_issues {
  default = true
}
