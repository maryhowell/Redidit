class PostsController < ApplicationController
  # before_action :set_list, only: [:new, :create]

  def index
    @post = current_user.post
    # authorize @post
  end

  def new
    @post = current_user.post.new
    # authorize @post
  end

  def show
    @post = Post.find params[:id]

  end

  def create
      # @board = Board.new(name: params[:board][:name])
    @post = @board.posts.new approved_params
    # authorize @post
    if @post.save
      flash[:notice] = "Post created!"
      redirect_to @board
    else
      render :new
    end
  end

  def destroy
  end

end
