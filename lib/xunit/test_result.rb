module Xunit
  class TestResult
    attr_accessor :results

    def initialize
      @results = []
    end

    def <<(result)
      results << result
      show_test_result(result)
    end

    private

    def show_test_result(result)
      putc case result[:status]
      when true
        '.'
      else
        'F'
      end
    end

  end
end
