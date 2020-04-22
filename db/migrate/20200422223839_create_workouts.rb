class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :media

      t.timestamps
    end
  end
end
