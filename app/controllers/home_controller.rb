class HomeController < ApplicationController

  layout "main"
  
  def index
    @tweets = Tweet.where(user_id: current_user.id)
  end

end
