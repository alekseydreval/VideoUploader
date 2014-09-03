class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :content

      t.timestamps
    end
  end
end
