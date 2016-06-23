class BoardsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @board = Board.all
  end

  def new
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
  @board = Board.find params[:id]
  # authorize @board
  @board.destroy
  redirect_to "/boards"

end



end
