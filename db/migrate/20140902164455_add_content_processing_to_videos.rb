class AddContentProcessingToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :content_processing, :string, null: false, default: false
  end
end
