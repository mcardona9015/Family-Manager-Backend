class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :text
      t.string :description
      t.string :startDate
      t.string :endDate
      t.string :recurrenceRule
      t.boolean :allDay

      t.timestamps
    end
  end
end
