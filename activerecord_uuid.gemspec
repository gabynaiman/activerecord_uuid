# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activerecord_uuid/version"

Gem::Specification.new do |s|
  s.name        = 'activerecord_uuid'
  s.version     = ActiveRecordUUID::VERSION
  s.authors     = ['Gabriel Naiman']
  s.email       = ['gabynaiman@gmail.com']
  s.homepage    = 'https://github.com/gabynaiman/activerecord_uuid'
  s.summary     = 'UUID extension for ActiveRecord'
  s.description = 'UUID extension for ActiveRecord'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'activerecord', '~> 3'
  s.add_dependency 'uuidtools'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec', '~> 2.12.0'
end
