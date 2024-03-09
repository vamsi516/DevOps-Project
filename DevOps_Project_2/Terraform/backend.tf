terraform {
  backend "s3" {
    bucket = "sravan-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
