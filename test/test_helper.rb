require 'test/unit'
require 'minitest/autorun'
require 'active_record'

$:.unshift File.expand_path("../../lib", __FILE__)
require 'bitmask_preference'

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => ':memory:'
)

require 'fixtures/dummy_class'
