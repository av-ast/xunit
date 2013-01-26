module Xunit
  class TestCase
    def initialize(name, block)
      define_singleton_method name do |block|
        block.call
      end
    end
    class << self
      def test(name, &block)
        inst = self.new(name, block)
        inst.send name, block
      end

      def assert(expr)
        puts expr == true
        expr == true
      end
    end

  end
end
