terraform {
  backend "s3" {
    bucket = "sreeterraformbucket"
    key    = "devopsgit.tfstate"
    region = "us-east-1"
  }
}