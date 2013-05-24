class Photo
  include Mongoid::Document
  include Mongoid::Paperclip
  field :title, type: String

  embedded_in :work_item, inverse_of: :photos

  has_mongoid_attached_file :image,
                            #:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                            #:url => "/system/:attachment/:id/:style/:filename",
                            :styles => {
                                original: '1920x1680>',
                                small: '100x100#',
                                medium: '250x250',
                                thumb: '140x70>'
                            },
                            storage: :dropbox,
                            dropbox_credentials: "#{Rails.root}/config/dropbox.yml",
                            dropbox_options: {
                                path: proc { |style| "tehnoles/#{style}/#{id}_#{image.original_filename}" }
                            }
end
