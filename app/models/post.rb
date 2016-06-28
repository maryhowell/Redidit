class Post < ActiveRecord::Base
  belongs_to :board
  belongs_to :user
  acts_as_votable

  def board_name
    self.board.name
  end

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
