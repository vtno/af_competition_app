# frozen_string_literal: true
class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :player_name
      t.integer :score_type
      t.integer :score, array: true
      t.integer :total_score
      t.integer :x_count
      t.integer :x_ten_count
      t.timestamps
    end
  end
end
