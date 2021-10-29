terraform {
  backend "s3" {
    bucket = "chenchireddy"
    key    = "devopsgit.tfstate"
    region = "ap-southeast-1"
  }
}
