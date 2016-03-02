class User < ActiveRecord::Base
  ROLES = %i[admin regular]
  validates :name, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_an_admin_remains
  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
  has_many :plans
  has_many :users_homeworks
  has_many :interests
  has_many :tasks
  has_many :users_groups

end
