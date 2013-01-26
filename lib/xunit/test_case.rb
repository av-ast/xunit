module Xunit
  class TestCase
    def test(name, &block)
      puts name
      yield
    end
  end
end
