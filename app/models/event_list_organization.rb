class EventListOrganization < ApplicationRecord
  belongs_to :event
  has_many :organizations
  accepts_nested_attributes_for :event
  #belongs_to :organization
  #belongs_to :organization
end
