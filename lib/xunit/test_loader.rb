module Xunit
  class TestLoader

    class << self
      def load_test_files
        files = search_test_files
        files.map do |file|
          get_test_instance(file)
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

      def get_test_instance(file)
        require "./#{file}" # TODO
        klass = get_class_by_file_path(file)
        puts "Test class: #{klass}"
        klass.new
      end

    end

  end
end
