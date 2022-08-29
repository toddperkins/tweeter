class Friend < ApplicationRecord
	belongs_to :user
  has_one :user, :through => :friend_user_id
end
