Factory.define :image, class: Chunks::Media::Image do |chunk|
  chunk.container_key   { :main }
  chunk.content         { nil }
  chunk.title           { "Title from factory" }
  chunk.image_file_name { "File namefrom factory" }
end