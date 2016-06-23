class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user

  def board_name
    self.board.name
  end

end
