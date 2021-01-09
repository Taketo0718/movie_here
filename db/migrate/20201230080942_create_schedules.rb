class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime   :start_time,  null: false
      t.datetime   :end_time,    null: false
      t.references :theater,     null: false, foreign_key: true
      t.references :movie,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
