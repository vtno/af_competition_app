class MovePointFromGameToScore < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :points, :integer
    add_column :scores, :points, :integer, array: true, default: [0, 0, 0, 0, 0]
  end
end
