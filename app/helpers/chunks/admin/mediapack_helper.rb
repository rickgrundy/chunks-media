module Chunks::Admin::MediapackHelper
  def replace_file_link
    link_to "replace", "#replace", class: "replace_file subtle"
  end
end