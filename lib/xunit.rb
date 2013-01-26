require "xunit/version"
require "active_support/inflector"

module Xunit
  autoload :TestRunner, "xunit/test_runner"
  autoload :TestLoader, "xunit/test_loader"
  autoload :TestCase, "xunit/test_case"
  autoload :TestResult, "xunit/test_result"
end
