class Photo
  include Mongoid::Document
  field :title, type: String

  belongs_to :work_item

  mount_uploader :image, ImageUploader
end
