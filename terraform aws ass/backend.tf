terraform {
  backend "s3" {
    bucket = "divya-second"
    key    = "one.tfstate"
    region = "us-east-1"
    dynamodb_table = "divya-table"
    }
}