class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.uuid :id, primary_key: true
    end
  end
end
