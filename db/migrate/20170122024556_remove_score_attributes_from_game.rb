class RemoveScoreAttributesFromGame < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :score, :integer
    remove_column :games, :x_count, :integer
    remove_column :games, :x_ten_count, :integer
  end
end
