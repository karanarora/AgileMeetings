class CreateRubySyncUps < ActiveRecord::Migration
  def change
    create_table :ruby_sync_ups do |t|
      t.string :Title
      t.text :Description

      t.timestamps
    end
  end
end
