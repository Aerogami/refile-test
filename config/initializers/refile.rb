require "refile/s3"

aws = {
  access_key_id: Rails.application.secrets.AWS_KEY_ID,
  secret_access_key: Rails.application.secrets.AWS_SECRET_ACCESS_KEY,
  region: Rails.application.secrets.AWS_REGION,
  bucket: Rails.application.secrets.AWS_BUCKET
}

Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
Refile.store = Refile::S3.new(prefix: 'store', **aws)

Refile.host = Rails.application.secrets.CLOUDFRONT_DISTRIBUTION
