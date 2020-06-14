class Member < ApplicationRecord
  belongs_to :user
  has_many :organizations
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :organizations
    #belongs_to :organization
end
