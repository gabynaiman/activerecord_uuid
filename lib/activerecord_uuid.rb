require 'active_record'
require 'uuidtools'
require 'logger'

require 'activerecord_uuid/version'
require 'activerecord_uuid/active_record_extension'

ActiveRecord::Base.send :extend, ActiveRecordUUID::ActiveRecord
ActiveRecord::ConnectionAdapters::TableDefinition.send :include, ActiveRecordUUID::TableDefinition

module ActiveRecordUUID

  def self.random
    UUIDTools::UUID.random_create.to_s
  end

end
