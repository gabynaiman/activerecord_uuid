require 'spec_helper'

describe 'ActiveRecord extension' do

  before :all do
    ActiveRecord::Base.establish_connection adapter: SQLITE_ADAPTER, database: ":memory:"
    ActiveRecord::Base.connection
    ActiveRecord::Migrator.migrate ActiveRecord::Migrator.migrations_path
  end

  context 'Attribute uuid' do

    it 'Migration type' do
      Country.primary_key.should eq 'id'
      uuid_column = Country.columns_hash['key']
      uuid_column.type.should eq :string
      uuid_column.limit.should eq 36
      uuid_column.null.should be true
    end

    it 'ActiveRecord generation' do
      model = Country.create!
      model.key.should be_a String
      model.key.size.should eq 36
    end

  end

  context 'Primary key uuid' do

    it 'Migration type' do
      Language.primary_key.should eq 'id'
      uuid_column = Language.columns_hash['id']
      uuid_column.type.should eq :string
      uuid_column.limit.should eq 36
      uuid_column.primary.should be true
      uuid_column.null.should be false
    end

    it 'ActiveRecord generation' do
      model = Language.create!
      model.id.should be_a String
      model.id.size.should eq 36
    end

  end

end