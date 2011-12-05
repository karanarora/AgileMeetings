class CreateMinutesOfMeetings < ActiveRecord::Migration
  def change
    create_table :minutes_of_meetings do |t|
      t.string :DiscussionTitle
      t.string :DiscussionDate
      t.text :DiscussionDescription

      t.timestamps
    end
  end
end
