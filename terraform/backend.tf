terraform {
  backend "s3" {
    bucket = "my-state-file0009"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
