class Board < ActiveRecord::Base
  has_many :posts

  def board_name
    self.board.name
  end

end
