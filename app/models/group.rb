class Group < ActiveRecord::Base
  has_many :homeworks
  has_many :users_groups
end
