module Chunks
  module Media
    class Image < Chunks::Chunk
      validates :title, presence: true
      validates :image_file_name, presence: true
            
      extra_attributes :image_file_name, :image_content_type, :image_file_size, :image_updated_at
      has_attached_file :image, styles: Chunks.config.image_styles
      
      def previewable?
        !new_record?
      end
    end
  end
end