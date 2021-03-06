CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV['S3_KEY'],                        # required
      :aws_secret_access_key  => ENV['S3_SECRET_KEY'],                        # required
      #    :host                   => 's3.example.com',             # optional, defaults to nil
      #    :endpoint               => 'http://s3.amazonaws.com' # optional, defaults to nil
  }
#  config.fog_directory  = 'anhceritafy'                          # required
  config.fog_directory = ENV['S3_BUCKET'] # 'anhceritafy'
end