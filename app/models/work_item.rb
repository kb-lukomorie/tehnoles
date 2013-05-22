class WorkItem
  include Mongoid::Document
  field :work_type, type: String
  field :name, type: String

  embeds_many :photos, cascade_callbacks: true

  accepts_nested_attributes_for :photos, allow_destroy: true
end
