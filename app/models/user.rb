class User < ActiveRecord::Base
  has_secure_password
  has_many :forum_threads
  validates_presence_of :password, :on => :create
  
end
