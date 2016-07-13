require 'figure/base'

module Figure
  class King < Base
    def vectors
      (1..1).flat_map { |vector| [[0, vector], [0,  -vector], [vector, 0], [-vector, 0], [vector, vector], [vector, -vector], [-vector, vector], [-vector, -vector]] }
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end
  end
end
