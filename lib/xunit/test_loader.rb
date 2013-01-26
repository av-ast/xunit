module Xunit
  class TestLoader

    class << self
      def load_test_files
      end
    end

    private

    class << self
      def search_test_files
        Dir["test/**/*_test.rb"]
      end
    end

  end
end
