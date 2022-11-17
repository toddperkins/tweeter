class Tweet < ApplicationRecord

	belongs_to :user

	# get tweets from users i'm following plus my tweets
	def self.following_plus_me(current_user)
		
		# ids for who i'm following plus current user id
		ids_to_get = current_user.follows.map { |f| f.follower_id }.insert(0, current_user.id)

		# return
		return self.where(user_id: ids_to_get).order('created_at DESC')

	end

end
