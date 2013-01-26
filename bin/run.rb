#!/usr/bin/env ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'test')

require "xunit"

Xunit::TestRunner.execute
