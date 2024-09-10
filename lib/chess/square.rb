#frozen_string_literal: true

module Chess
  class Square
    def initialize(rank, file, piece = nil)
      @rank = rank
      @file = file
      @piece = piece
    end
  end
end
