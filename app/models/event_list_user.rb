class EventListUser < ApplicationRecord
  belongs_to :user
  belongs_to :event
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :event
  #has_many :events
  #has_many :users
end