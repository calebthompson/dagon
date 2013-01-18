module Dagon
  class DObject
    attr_reader :value
    def initialize value
      @value = value
    end

    def to_s
      value
    end

    def reduce
      self
    end
  end
end
