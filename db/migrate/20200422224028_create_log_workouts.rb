class CreateLogWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :log_workouts do |t|
      t.references :log, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
