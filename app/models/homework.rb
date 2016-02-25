class Homework < ActiveRecord::Base
  has_many :users_homeworks
  belongs_to :group
end
