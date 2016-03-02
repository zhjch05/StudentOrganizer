class User < ActiveRecord::Base
  has_secure_password
  has_many :plans
  has_many :users_homeworks
  has_many :interests
  has_many :tasks
  has_many :users_groups
end
