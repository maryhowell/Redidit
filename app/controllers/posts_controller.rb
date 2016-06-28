class PostsController < ApplicationController
  # before_action :set_list, only: [:new, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

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
    @post = Post.find params[:id]
    # authorize @board
    @post.destroy
    redirect_to "/boards"
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { render json: { count: @post.liked_count } }
      end
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    respond_to do |format|
     format.html {redirect_to :back }
     format.json { render json: { count: @post.disliked_count } }
   end

  private

  def approved_params
    params.require(:post).permit(:title, :content, :board_id, :user_id)
  end



end
