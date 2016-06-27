class BoardsController < ApplicationController
  skip_after_action :verify_authorized
  skip_before_action :authenticate_user!
  before_action :set_user, except: [:destroy, :index, :edit, :update]

  def index
    @board = Board.all
  end

  def new
    authorize @user
    @board = Board.new
    # authorize @board
  end

  def show
    @board = Board.find params[:id]
  end

  def create
  @board = Board.new(name: params[:board][:name])
  if @board.save
    flash[:success] = "That Board is created!"
    #do something other then this. I just wanted to make sure it works :stuck_out_tongue:
    redirect_to @board
  else
    render :new
  end
end

def destroy
  authorize @user
  @board = Board.find params[:id]
  # authorize @board
  @board.destroy
  redirect_to "/boards"

end

private

def set_user
  @user = current_user
end


end
