module Xunit
  class TestLoader

    class << self
      def load_test_files
        files = search_test_files
        files.each do |file|
          require "./#{file}"
          klass = get_class_by_file_path(file)
          puts "Test class: #{klass}"
        end
      end
    end

    private

    class << self
      def search_test_files
        Dir["test/**/*_test.rb"]
      end

      def get_class_by_file_path(file_path)
        file_name = File.basename(file_path,File.extname(file_path))
        file_name.camelize.constantize 
      end
    end

  end
end
