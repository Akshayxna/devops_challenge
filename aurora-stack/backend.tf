terraform {
  backend "s3" {
    bucket       = "akshay-devops-project-states-2026" 
    key          = "dev/portfolio/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}