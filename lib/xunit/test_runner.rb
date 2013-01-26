module Xunit
  class TestRunner
    class << self
      def execute
        puts "Runner was executed"
        TestLoader.load_test_files
      end
    end
  end
end
