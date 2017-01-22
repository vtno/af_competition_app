# frozen_string_literal: true
class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :score_type
      t.integer :game_id
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5
      t.integer :score6
      t.integer :score7
      t.integer :score8
      t.integer :score9
      t.integer :score10
      t.integer :x_count
      t.integer :x_and_10_count
      t.integer :ten_count
      t.integer :nine_count

      t.timestamps
    end
  end
end
