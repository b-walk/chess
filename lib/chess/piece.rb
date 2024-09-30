# frozen_string_literal: true

module Chess
  # A generic class that every piece variety will inherit behavior from 
  class Piece
    attr_reader :color, :position, :move_count, :vectors

    @@list = { white: [], black: [] }

    def self.list
      @@list
    end

    # Empties the @@list variable in the case of a new game
    def self.reset
      @@list = { white: [], black: [] }
    end
    
    def initialize(color, position, move_count = 0)
      @color = color
      @position = position
      @move_count = move_count
      # For Piece subclasses, vectors[:restricted] should return a 2d-array of moves and piece-specific conditions under which those moves can be executed (i.e. [<vector>, <condition>])
      # For Piece subclasses, vectors[:standard] should return an array of the moves that can be executed under any conditions (moves are only checked for legality)
      @vectors = { restricted: [], standard: [] }
      Piece.list[color] << self
    end
  end
end
