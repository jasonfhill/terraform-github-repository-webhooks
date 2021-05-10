
Create a GitHub Personal Access Token that has `admin:repo_hook` for full control of repository hooks; in otherwords, we need `write:repo_hook` to write repository hooks and `read:repo_hook` to read repository hooks.

For a complete example, see [examples/complete](examples/complete).

```hcl
module "github_webhooks" {
  source = "github.com/jasonfhill/repository-webhooks/github"
  github_organization  = "yourorg"
  github_token         = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  github_repositories  = ["your_repo"]
  webhook_url          = "https://example.com"
  webhook_content_type = "json"
  events               = ["issues"]
}
```