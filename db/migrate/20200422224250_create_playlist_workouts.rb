class CreatePlaylistWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_workouts do |t|
      t.references :playlist, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
