module Xunit
  class TestRunner
    class << self
      def execute
        test_result = TestResult.new
        test_instances = TestLoader.load_test_files

        test_instances.each do |inst|
          inst_methods = inst.methods.grep /_test$/
          inst_methods.each do |inst_method|
            result = {
              klass: inst.class.name,
              method: inst_method,
              status: inst.send(inst_method)
            }
            test_result << result
          end
        end
        p test_result.results
      end
    end

  end
end
