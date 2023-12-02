class Ecard < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
