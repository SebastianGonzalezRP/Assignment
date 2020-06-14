class Message < ApplicationRecord
  belongs_to :user
  has_many :message_user
    #belongs_to :message_user
end
