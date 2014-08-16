class Photo < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :auto
end
