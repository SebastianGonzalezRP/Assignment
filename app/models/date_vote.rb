class DateVote < ApplicationRecord
  has_one :user
  has_many :date_options
    #belongs_to :date_option
end