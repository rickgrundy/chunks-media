module Chunks
  module Media
    class Image < Chunks::Chunk
      validates :title, presence: true
    end
  end
end