class Plan < ActiveRecord::Base
  validates :name, :user_id, presence: true
  validates :estimated_time, :presence => true, :if => Proc.new { |a| a.term == "short" }
  belongs_to :user
end
