class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :Title

      t.timestamps
    end
  end
end
