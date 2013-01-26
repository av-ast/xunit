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
              status: nil
            }
            begin
              result[:status] = inst.send(inst_method)
            rescue Exception => e
              result[:message] = e.message
              result[:backtrace] = e.backtrace

              puts result[:message]
              puts result[:backtrace]
            end
            test_result << result
          end
        end
        p test_result.results
      end
    end

  end
end
