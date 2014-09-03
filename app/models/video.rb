class Video < ActiveRecord::Base
  mount_uploader :content, ContentUploader

  has_many :comments

end
