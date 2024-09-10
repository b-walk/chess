# frozen_string_literal: true

require_relative 'piece'

module Chess
  class Pawn < Piece
    VECTORS = {
      move: [[0, 1]],
      capture: [[-1, 1], [1, 1]],
      special: {
        en_passant: { capture_vectors: [[-1, 0], [1, 0]], move_vectors: [[-1, 1], [1, 1]] } # only permitted when opposing pawn has advanced two spaces forward and is one of the adjacent squares on the rank
        double: [[0, 2]] # only permitted before pawn has been moved from its initial position
      }
    }

    def promote
      # change vectors to queen's?
    end
  end
end 
