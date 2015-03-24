require 'aws-sdk'
require 'thor'

module Presigner
  class CLI < Thor

    desc "url ACCESS_KEY_ID SECRET_ACCESS_KEY DURATION BUCKET KEY", "Create presigned URLs for S3 operations"
    def url(access_key_id, secret_access_key, duration, bucket, key)

        s3 = Aws::S3::Client.new(
          access_key_id: access_key_id,
          secret_access_key: secret_access_key,
          region: "ap-northeast-1"
        )

        signer = Aws::S3::Presigner.new(client: s3)
        url    = signer.presigned_url(:get_object, bucket: bucket, key: key)

        say url, :green

    end

  end
end
