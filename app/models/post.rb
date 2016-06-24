class Post < ActiveRecord::Base
  belongs_to :board
  belongs_to :user
  acts_as_votable

  def board_name
    self.board.name
  end

end
