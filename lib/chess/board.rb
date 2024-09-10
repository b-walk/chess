#frozen_string_literal: true

require_relative 'square'

module Chess
  # Board objects allow legal manipulation of piece data by human players
  class Board
    attr_reader :squares

    def initialize
      @squares = set_empty_board
    end

    private

    def set_empty_board
      Array.new(64) { |i| Square.new(rank_at(i), file_at(i)) }
    end

    def rank_at(i)
      i / 8
    end

    def file_at(i)
      i % 8
    end
  end
end
