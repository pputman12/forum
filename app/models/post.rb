class Post < ActiveRecord::Base
  belongs_to :forum_thread
end
