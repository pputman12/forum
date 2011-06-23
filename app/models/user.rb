class User < ActiveRecord::Base
  has_secure_password
  has_many :forum_threads
  has_many :posts
  validates_presence_of :password, :on => :create
  validates_uniqueness_of :username
  
  def admin?
    self.admin || self.username == "admin"
  end
end