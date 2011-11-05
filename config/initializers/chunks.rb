Chunks.configure do
  extension "media"
  option :s3_key, :s3_secret, :s3_bucket
  option :image_styles
  
  set :image_styles, {
    thumbnail: "120x120>",
    square: "120x120#",
    article: "600x400>",
    large: "1024x768"
  }
end