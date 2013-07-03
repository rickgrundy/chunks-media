FactoryGirl.define do
  factory :image, class: Chunks::Media::Image do |chunk|
    chunk.content         { nil }
    chunk.title           { "Title from factory" }
    chunk.image_file_name { "File namefrom factory" }
  end
end