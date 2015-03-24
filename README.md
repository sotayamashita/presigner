Presigner
=========

[![Dependency Status](https://gemnasium.com/sotayamashita/presigner.svg)](https://gemnasium.com/sotayamashita/presigner)

CLI allows you to create presigned URLs for S3. It use version 2 of AWS SDK for Ruby. If you would like to know about
version 2 of AWS SDK for Ruby, please read the link below:

http://docs.aws.amazon.com/sdkforruby/api/Aws/S3.html

## Installation

    $ bundle install
    $ rake build
    $ rake install

## Usage

    $ presigner url ACCESS_KEY_ID SECRET_ACCESS_KEY DURATION BUCKET KEY

## License

[MIT](http://sotayamashita.mit-license.org/) © [Sota Yamashita](https://github.com/sotayamashita)
