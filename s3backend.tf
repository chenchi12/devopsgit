terraform {
  backend "s3" {
    bucket = "chenchireddy"
    key    = "devopsgit.tfstate"
    region = "us-east-1"
  }
}