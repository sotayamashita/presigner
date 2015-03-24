require 'aws-sdk'
require 'thor'

module Presigner
  class CLI < Thor

    desc "url ACCESS_KEY_ID SECRET_ACCESS_KEY DURATION BUCKET KEY", "Create presigned URLs for S3 operations"
    def url(access_key_id, secret_access_key, duration, bucket, key)
        signer = Aws::S3::Client.new(access_key_id, secret_access_key)
        url    = signer.presigned_url(:get_object, bucket: bucket, key: key)

        say url, :green
    end

  end
end
