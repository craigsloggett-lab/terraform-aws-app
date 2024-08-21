terraform {
  cloud {
    hostname     = "tfe.craig-sloggett.sbx.hashidemos.io"
    organization = "craigsloggett-lab"

    workspaces {
      name = "testing-workspace"
    }
  }
}
