module Xunit
  class TestCase
    class << self
      def test(name=nil, &block)
        raise "BlankTestName" if name.blank?
        raise "EmptyBlock" unless block_given?

        class_eval do
          define_method "#{name}_test" do
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
