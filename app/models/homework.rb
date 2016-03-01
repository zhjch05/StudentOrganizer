class Homework < ActiveRecord::Base
  validates :name, :due_date, presence: true

  has_many :users_homeworks
  belongs_to :group
end
