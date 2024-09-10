#frozen_string_literal: true

class Square
  def initialize(rank, file, piece = nil)
    @rank = rank
    @file = file
    @piece = piece
  end
end
