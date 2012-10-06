module ActiveRecordUUID

  module ActiveRecord
    def pk_uuid
      self.primary_key = :id
      self.sequence_name = nil
      before_create do
        self.id = ActiveRecordUUID.random unless self.id
      end
    end

    def attr_uuid(name)
      before_create do
        self.send("#{name}=", ActiveRecordUUID.random) unless self.send("#{name}")
      end
    end
  end

  module TableDefinition
    def uuid(name, options={})
      @columns.delete @columns_hash.delete('id') if options[:primary_key]
      column(name, :string, limit: 36, null: options[:null] || !options[:primary_key], primary: options[:primary_key])
    end
  end

end