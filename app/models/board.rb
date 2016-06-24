class Board < ActiveRecord::Base
  has_many :posts

  def board_name
    self.board.name
  end

  def score
  self.get_upvotes.size - self.get_downvotes.size
end

end
