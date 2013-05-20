class WorkItem
  include Mongoid::Document
  field :work_type, type: String
  field :name, type: String

  has_many :photos

  accepts_nested_attributes_for :photos, allow_destroy: true
end
