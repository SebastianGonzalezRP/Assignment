class Comment < ApplicationRecord
  belongs_to :user, dependent: :delete
  belongs_to :event, dependent: :delete
  #belongs_to :user
  #belongs_to :event
end
