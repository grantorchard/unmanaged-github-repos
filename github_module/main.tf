resource github_repository "this" {
  name        = var.repository_name
  description = var.repository_description

  private = var.repository_private
  has_issues = var.has_issues

  dynamic "template" {
    for_each = var.repository_template != false ? [0] : []
    content {
      owner = var.template_repository_owner
      repository = var.template_repository_name
    }
  }
}