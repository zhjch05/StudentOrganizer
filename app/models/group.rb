class Group < ActiveRecord::Base
  has_many :belongs_tos
  has_many :users, through: :belongs_tos
end
