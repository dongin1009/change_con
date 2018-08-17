class Item < ApplicationRecord
    belongs_to :user, required: false
    mount_uploader :image, ImageUploader
end
