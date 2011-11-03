require_relative "../../../spec_helper.rb"

describe Chunks::Media::Image do
  describe "validation" do
    it "requires a title" do
      chunk = Chunks::Media::Image.new
      chunk.should_not be_valid
      chunk.title = "Some text"
      chunk.should be_valid
    end
  end
end