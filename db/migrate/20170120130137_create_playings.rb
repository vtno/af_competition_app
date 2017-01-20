class CreatePlayings < ActiveRecord::Migration[5.0]
  def change
    create_table :playings do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :round
      t.integer :score
      t.string :type

      t.timestamps
    end
  end
end
