# frozen_string_literal: true

require_relative '../piece'

# Pawn behavior:
    # Standard:
      # Can move up by 1
      # Can capture a piece if it is in the adjacent diagonal space
    # Restricted:
      # Can move up by 2 if it is in its original position
      # En-passant:
        # Can capture a piece if it moved by 2 to a horizontally adjacent square
        # The capturing piece still ends up in the diagonal space on the side of the captured piece
      # Promotion:
        # Pawn can be substituted for a Queen, Bishop, Rook, or Knight if it reaches the opposing color's back rank

module Chess
  class Pawn < Piece
    def initialize(*args, vectors)
      super(*args)
      @vectors = vectors
    end
  end
end 
