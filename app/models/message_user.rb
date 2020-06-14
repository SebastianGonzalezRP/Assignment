class MessageUser < ApplicationRecord
  belongs_to :user
  has_many :messages
    #has_one :message
end
