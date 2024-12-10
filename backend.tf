terraform {
  cloud {
    organization = "craigsloggett-lab"

    workspaces {
      name = "terraform-aws-app"
    }
  }
}
