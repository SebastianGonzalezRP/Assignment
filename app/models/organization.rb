class Organization < ApplicationRecord
  has_many :members, dependent: :delete_all
  has_many :event_list_organizations , dependent: :delete_all
  #has_many :users, through: member
  has_one :resource

end
