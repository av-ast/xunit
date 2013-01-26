module Xunit
  class TestRunner
    class << self
      def execute
        test_result = TestResult.new
        
        puts "Runner was executed"
        TestLoader.load_test_files
      end
    end
  end
end
