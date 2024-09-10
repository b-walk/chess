# frozen_string_literal: true

module Chess
  # A generic class that every piece variety will inherit behavior from 
  class Piece
    attr_reader :color
    
    def initialize(color)
      @color = color
    end
  end
end
