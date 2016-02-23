class Homework < ActiveRecord::Base
  has_many :work_ons
  has_many :users, through: :work_ons
end
