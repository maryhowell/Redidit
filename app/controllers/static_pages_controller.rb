class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    # if logged_in?
    #   @micropost  = current_user.microposts.build
    #   @feed_items = current_user.feed.paginate(page: params[:page])
    # end
  end

  def boards
  end



end
