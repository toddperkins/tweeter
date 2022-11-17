class HomeController < ApplicationController

  def index

    # get tweets from users i'm following plus my tweets
    @tweets = Tweet.following_plus_me(current_user)

    # get users i'm following
    @following = User.followed_users(current_user)
    
    # get users i'm not following
    @not_following = User.not_followed_users(current_user)

  end

end
