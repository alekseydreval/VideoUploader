class AddContentTmpToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :content_tmp, :string
  end
end
