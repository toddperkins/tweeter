class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  has_many :tweets
  has_many :follows

  # -----------------------------------------------------
  # users i am following
  def self.followed_users(current_user)
    
    return self.where(id: current_user.follows.map { |f| f.follower_id })
    
  end

  # -----------------------------------------------------
  # users i am NOT following
  def self.not_followed_users(current_user)
    
    # create array of user ids that we are not following
    not_following_ids = self.all.map { |u| u.id } - current_user.follows.map { |f| f.follower_id }.insert(0, current_user.id)
    
    # find those users for view
    return self.find(not_following_ids)

  end
  
end
