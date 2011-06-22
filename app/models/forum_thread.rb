class ForumThread < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :posts
  
  accepts_nested_attributes_for :posts
  def posts_attributes=(attrs)
    logger.info self.inspect
    attrs.each_key do |k|
      attrs[k][:user_id] = self.user_id
    end
    logger.info attrs.inspect
    assign_nested_attributes_for_collection_association(:posts, attrs)
  end
=begin  
  before_create :set_initial_post_user
  
  def set_initial_post_user
    self.posts.each do |post|
      post.user = self.user
    end
  end
=end
end
