class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :type
      t.string :level
      t.string :gender
      t.integer :range
      t.string :competition_type
      t.string :status

      t.timestamps
    end
  end
end
