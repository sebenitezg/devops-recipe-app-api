#----------------------------------------
# Create ECR respositories for storing  -
# Docker images                         -
#----------------------------------------

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Updte to true for real deployment
    # to update the version of packages of 
    # my application
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Updte to true for real deployment
    # to update the version of packages of 
    # my application
    scan_on_push = false
  }
}
