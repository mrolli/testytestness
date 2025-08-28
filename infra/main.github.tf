# This will cause github provider crash, until https://github.com/integrations/terraform-provider-github/pull/732 is merged.
resource "github_repository_file" "workflow_file" {
  repository = data.github_repository.staticwebapp.name
  branch     = var.repository_branch
  file       = ".github/workflows/azure-static-web-apps.yml"
  content = templatefile("./azure-static-web-apps.tpl",
    {
      app_location    = "/"
      api_location    = "api"
      output_location = ""
      api_token_var   = local.api_token_var
    }
  )
  commit_message      = "Update Azure deployment workflow (by Terraform)"
  commit_author       = "Michael Rolli"
  commit_email        = "michael@rollis.ch"
  overwrite_on_create = true
}
