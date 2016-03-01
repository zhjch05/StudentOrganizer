class Group < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  
  has_many :homeworks
  has_many :users_groups
end
