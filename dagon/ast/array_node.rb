require 'core/array'

module Dagon
  module AST
    class ArrayNode < Node
      def initialize filename, line_number, list
        super filename, line_number
        @list = list
      end

      def evaluate interpreter
        evaluated_list = @list.map { |item| item.evaluate(interpreter) }
        Dagon::Core::DG_Array_Class.new.dagon_send(interpreter, "new", evaluated_list)
      end
    end
  end
end