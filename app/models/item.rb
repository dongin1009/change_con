class Item < ApplicationRecord
    resourcify
    include Authority::Abilities
    
    belongs_to :user, required: false
    mount_uploader :image, ImageUploader
end