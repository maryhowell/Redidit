class PostsController < ApplicationController
  # before_action :set_list, only: [:new, :create]

  def index
    @post = current_user.posts
    # authorize @post
  end

  def new
    @post = current_user.posts.new
  @board = Board.find(params[:board][:board_id])
  end

  def create
    @board = Board.find(params[:post][:board_id])
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
      @post = Post.find(params[:id])
    end

  def destroy
  end

  private

  def approved_params
    params.require(:post).permit(:title, :content, :board_id, :user_id)
  end

end
