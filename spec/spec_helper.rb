require 'activerecord_uuid'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

ActiveRecord::Base.logger = Logger.new($stdout)
ActiveRecord::Migrator.migrations_path = "#{File.dirname(__FILE__)}/migrations"