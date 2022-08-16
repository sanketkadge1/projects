locals {
  bucket_name = "s3-bucket-${random_pet.this.id}"
}


resource "random_pet" "this" {
  length = 2
}

module "s3_bucket" {
  source = "git@github.com:sanketkadge1/Terraform//Modules/S3?ref=AWS"

  bucket = local.bucket_name

  force_destroy       = true
  acceleration_status = "Suspended"
  request_payer       = "BucketOwner"

  tags = {
    name = "test"
  }

  acl = "private"
  object_lock_enabled = false
  
  # S3 bucket-level Public Access Block configuration
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
  control_object_ownership = true
  object_ownership         = "BucketOwnerPreferred"



}








