terraform {
    backend "s3" {
    bucket         = "terraform-states-demo-test-1"
    key            = "<%= expansion(':MOD_NAME-:ENV/terraform.tfstate') %>"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
