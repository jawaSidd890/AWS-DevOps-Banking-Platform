provider "aws" {
  region = "ap-south-1"
}

resource "aws_ecr_repository" "banking" {
  name = "banking-app"
}
