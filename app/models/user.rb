class User < ActiveRecord::Base
  has_many :work_ons
  has_many :belongs_tos
  has_many :homeworks, through: :work_ons
  has_many :groups, through: :belongs_tos
  has_many :interests, dependent: :destory
end
