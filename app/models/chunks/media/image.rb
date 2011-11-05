module Chunks
  module Media
    class Image < Chunks::Chunk
      REQUIRED_ADMIN_STYLES = {admin_thumbnail: "120x120#"}
      validates :title, presence: true
      validates :image_file_name, presence: true
            
      extra_attributes :image_file_name, :image_content_type, :image_file_size, :image_updated_at
      has_attached_file :image, styles: Chunks.config.image_styles.merge(REQUIRED_ADMIN_STYLES)
      
      def previewable?
        image_file_name.present?
      end
    end
  end
end