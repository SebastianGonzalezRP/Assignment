class DateOption < ApplicationRecord
  has_one :event
  #belongs_to :event
  has_many :date_votes
end
