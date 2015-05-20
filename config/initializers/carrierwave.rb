
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["aws_access_key_id"],                        # required
    :aws_secret_access_key  => ENV["aws_secret_access_key"],                        # required
    :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
    #:endpoint               => "https://s3.amazonaws.com"
  }
  config.fog_directory  = 'nailon'                     # required
  

end
