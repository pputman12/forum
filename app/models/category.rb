class Category < ActiveRecord::Base
  has_many :forum_threads
end
