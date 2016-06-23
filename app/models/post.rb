class Post < ActiveRecord::Base
  belongs_to :board
  belongs_to :user

  def board_name
    self.board.name
  end

end
