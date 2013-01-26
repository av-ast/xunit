module Xunit
  class TestCase
    class << self
      def test(name=nil, &block)
        raise "BlankTestName" if name.blank?

        class_eval do
          define_method "#{name}_test" do
            raise "Block is empty" unless block_given?
            yield
          end
        end
      end

      def assert(expr)
        expr == true
      end
    end

  end
end
