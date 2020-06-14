class Resource < ApplicationRecord
  has_one :event
  has_one :organization, dependent: :delete
  #belongs_to :event
  #belongs_to :organization
end
