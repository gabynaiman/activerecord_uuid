class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.uuid :key
    end
  end
end
