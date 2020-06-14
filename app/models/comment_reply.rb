class CommentReply < ApplicationRecord
  belongs_to :user ,dependent: :delete
  belongs_to :comment ,dependent: :delete
  #has_one :user
  #has_one :comment
end
