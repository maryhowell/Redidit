class PostsController < ApplicationController
  # before_action :set_list, only: [:new, :create]

  def index
    @post = current_user.post
    # authorize @post
  end

  def new
    @post = Posts.new
  # @board = Board.find(params[:board_id])
  end

  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new approved_params
    # authorize @post
    if @post.save
      flash[:notice] = "Post created!"
      redirect_to @board
    else
      render :new
    end
  end


    def show
      @post = Posts.find(params[:id])
    end

  def destroy
  end

end
