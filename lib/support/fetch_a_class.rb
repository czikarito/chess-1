module Support
  class FetchAClass
    attr_reader :class_name

    FIGURES = %w(Pawn Bishop King Knight Rook Queen).freeze

    def initialize(class_name)
      @class_name = class_name
    end

    def fetch_const
      return false unless class_valid?(class_name)
      Object.const_get("Figure::#{class_name}")
    end

    private

    def class_valid?(class_name)
      FIGURES.include?(class_name)
    end
  end
end
