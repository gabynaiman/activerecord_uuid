# ActiveRecordUUID

[![Gem Version](https://badge.fury.io/rb/activerecord_uuid.png)](https://rubygems.org/gems/activerecord_uuid)
[![Build Status](https://travis-ci.org/gabynaiman/activerecord_uuid.png?branch=master)](https://travis-ci.org/gabynaiman/activerecord_uuid)

UUID extension for ActiveRecord

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord_uuid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord_uuid

## Usage

### Migrations

Define attribute as UUID

    class CreateCountries < ActiveRecord::Migration
      def change
        create_table :countries do |t|
          t.uuid :key
        end
      end
    end

Define primary key as UUID

    class CreateLanguages < ActiveRecord::Migration
      def change
        create_table :languages do |t|
          t.uuid :id, primary_key: true
        end
      end
    end

### Models

For automatic generation of UUID before creation

    class Country < ActiveRecord::Base
      attr_uuid :key
    end

For change primary key to UUID

    class Language < ActiveRecord::Base
      pk_uuid
    end

### Manually creation of UUIDs

    ActiveRecordUUID.random

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
