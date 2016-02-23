class Task < ActiveRecord::Base
  has_many: diagrams, dependent: :destory
end
