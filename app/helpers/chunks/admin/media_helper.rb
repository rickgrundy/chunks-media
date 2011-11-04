module Chunks::Admin::MediaHelper
  def replace_file_link
    link_to "replace", "#replace", class: "replace_file subtle"
  end
end