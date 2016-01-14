$:.push File.expand_path("../lib", __FILE__)
require 'bitmask_preference/version'

Gem::Specification.new do |s|
  s.name        = 'Bitmask Preference'
  s.version     = BitmaskPreference::VERSION
  s.date        = '2016-01-13'
  s.summary     = "Bitmask Preferences for your models"
  s.description = "Bitmask Preferences for your models"
  s.authors     = ["Ronak Jangir"]
  s.email       = 'ronakjangir47@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = "https://github.com/ronakjangir47/bitmask_preference"
  s.license     = 'MIT'

  s.add_dependency 'activerecord', '>= 3.2'
  s.add_development_dependency 'sqlite3'
end
